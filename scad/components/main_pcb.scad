include <scad/parameters/project.scad>
include <scad/parameters/electronics.scad>
use <scad/components/common.scad>

module main_pcb_placeholder() {
    // Verified board envelope: main_pcb_length x main_pcb_width x pcb_thickness_nominal.
    rounded_plate_placeholder(main_pcb_size, main_pcb_corner_radius, color_main_pcb, 0.8);

    // No mounting features are modeled in the frozen reference assembly.

    // Verified power button diameter/height and measured edge location.
    translate([
        -main_pcb_length / 2 + power_button_center_from_board_edge,
        power_button_placeholder_y,
        pcb_thickness_nominal / 2 + power_button_height_above_pcb / 2
    ])
        color("silver", 0.9)
            cylinder(h = power_button_height_above_pcb, d = power_button_diameter, center = true, $fn = 48);

    // Verified DC jack opening width/height and height above PCB; depth/location are placeholders.
    translate([
        dc_jack_placeholder_x + dc_jack_placeholder_depth / 2,
        dc_jack_placeholder_y,
        pcb_thickness_nominal / 2 + dc_jack_height_above_pcb / 2
    ])
        color("dimgray", 0.9)
            cube([dc_jack_placeholder_depth, dc_jack_opening_width, dc_jack_height_above_pcb], center = true);
}

module main_pcb() {
    // Reference model only. Do not add final openings, rails, bosses, or shell geometry here.
    main_pcb_placeholder();
}
