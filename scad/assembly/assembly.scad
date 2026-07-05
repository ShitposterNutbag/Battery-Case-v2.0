include <../parameters/project.scad>
include <../parameters/enclosure.scad>
use <../components/common.scad>
use <../components/battery_holder.scad>
use <../components/main_pcb.scad>
use <../components/led_pcb.scad>
use <../components/usb_board.scad>
use <../components/enclosure.scad>
use <../components/lid.scad>

// Layout orientation helpers only. These rotate component reference models into
// the measured assembly relationship without creating final mounting geometry.
module main_pcb_layout_reference() {
    // Local PCB +Z/component side maps to global +X, so DC jack/button face outward.
    multmatrix([
        [0, 0, 1, 0],
        [1, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 1]
    ]) main_pcb();
}

module led_pcb_layout_reference() {
    // Local PCB +Z/component side maps to global -X, so LED array faces outward.
    multmatrix([
        [0, 0, -1, 0],
        [1, 0, 0, 0],
        [0, -1, 0, 0],
        [0, 0, 0, 1]
    ]) led_pcb();
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

        translate(usb_board_position)
            usb_board();

        translate(lid_position)
            lid();
    }
}

assembly_scaffold();
