include <scad/parameters/project.scad>
include <scad/parameters/enclosure.scad>
use <scad/components/common.scad>
use <scad/components/battery_holder.scad>
use <scad/components/main_pcb.scad>
use <scad/components/led_pcb.scad>
use <scad/components/usb_board.scad>
use <scad/components/enclosure.scad>
use <scad/components/lid.scad>

// Layout orientation helpers only. These rotate component reference models into
// the measured pack relationship without creating final mounting geometry.
module main_pcb_layout_reference() {
    // Local PCB +Z/component side maps to global -Y, so DC jack/button face outward.
    multmatrix([
        [1, 0, 0, 0],
        [0, 0, -1, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 1]
    ]) main_pcb();
}

module led_pcb_layout_reference() {
    // Local PCB +Z/component side maps to global +Y, so LED array faces outward.
    multmatrix([
        [1, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 1]
    ]) led_pcb();
}

module usb_board_layout_reference() {
    // USB connector is modeled on local +Y; map that direction to global -Y.
    multmatrix([
        [1, 0, 0, 0],
        [0, -1, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ]) usb_board();
}

module ribbon_cable_reference() {
    // Simple visual ribbon connecting the two end PCBs around the right side of
    // the pack. Reference only; not a channel, clip, or enclosure feature.
    ribbon_x = battery_pack_width / 2 - layout_ribbon_width / 2;
    ribbon_z = battery_pack_total_height_with_boards / 2 + layout_ribbon_thickness / 2;
    main_y = main_pcb_position[1];
    led_y = led_pcb_position[1];

    color("saddlebrown", 0.75) {
        translate([ribbon_x, (main_y + led_y) / 2, ribbon_z])
            cube([layout_ribbon_width, led_y - main_y, layout_ribbon_thickness], center = true);
        translate([ribbon_x / 2, main_y, ribbon_z])
            cube([ribbon_x, layout_ribbon_width, layout_ribbon_thickness], center = true);
        translate([ribbon_x / 2, led_y, ribbon_z])
            cube([ribbon_x, layout_ribbon_width, layout_ribbon_thickness], center = true);
    }
}

module assembly_scaffold() {
    if (show_axes)
        reference_axes(35);

    if (show_placeholders) {
        enclosure();

        translate(battery_holder_position)
            battery_holder();

        translate(main_pcb_position)
            main_pcb_layout_reference();

        translate(led_pcb_position)
            led_pcb_layout_reference();

        ribbon_cable_reference();

        translate(usb_board_position)
            usb_board_layout_reference();

        translate(lid_position)
            lid();
    }
}

assembly_scaffold();
