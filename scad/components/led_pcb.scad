include <../parameters/project.scad>
include <../parameters/electronics.scad>
use <common.scad>

module led_pcb_placeholder() {
    rounded_plate_placeholder(led_pcb_size, led_pcb_corner_radius, color_led_pcb, 0.85);

    for (i = [0 : led_count - 1])
        translate([(i - (led_count - 1) / 2) * led_spacing, 0, led_pcb_size[2] / 2 + 0.8])
            color("yellow", 0.9)
                cylinder(h = 1.6, d = led_diameter, center = true, $fn = 24);
}

module led_pcb() {
    // TODO: Add final LED board outline, LED windows, and mounting features.
    led_pcb_placeholder();
}
