include <../parameters/project.scad>
include <../parameters/electronics.scad>
use <common.scad>

module led_pcb_placeholder() {
    // Verified board envelope: led_pcb_length x led_pcb_width x led_pcb_thickness_nominal.
    rounded_plate_placeholder(led_pcb_size, led_pcb_corner_radius, color_led_pcb, 0.85);

    // Verified control button diameter/height and edge references; midpoint is calculated for approximate reference rendering only.
    translate([
        -led_pcb_length / 2 + control_button_center_approx_from_board_edge,
        0,
        led_pcb_thickness_nominal / 2 + control_button_height_above_pcb / 2
    ])
        color("silver", 0.9)
            cylinder(h = control_button_height_above_pcb, d = control_button_diameter, center = true, $fn = 32);

    // Verified three-LED package count, package width, and array span. Package height/depth are placeholders.
    led_center_y = led_pcb_width / 2 - top_of_board_to_bottom_of_led_package - led_package_height_placeholder / 2;
    for (i = [0 : led_count - 1])
        translate([
            (i - (led_count - 1) / 2) * led_spacing,
            led_center_y,
            led_pcb_thickness_nominal / 2 + 0.8
        ])
            color("yellow", 0.9)
                cube([individual_led_width, led_package_height_placeholder, 1.6], center = true);
}

module led_pcb() {
    // Reference model only. Do not add final LED windows, openings, or mounting features here.
    led_pcb_placeholder();
}
