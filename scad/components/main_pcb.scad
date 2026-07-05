include <../parameters/project.scad>
include <../parameters/electronics.scad>
use <common.scad>

module main_pcb_placeholder() {
    rounded_plate_placeholder(main_pcb_size, main_pcb_corner_radius, color_main_pcb, 0.8);

    for (x = [-1, 1], y = [-1, 1])
        translate([x * (main_pcb_size[0] / 2 - 7), y * (main_pcb_size[1] / 2 - 7), -main_pcb_standoff_height / 2])
            color("black", 0.5)
                cylinder(h = main_pcb_standoff_height, d = main_pcb_standoff_diameter, center = true, $fn = 24);
}

module main_pcb() {
    // TODO: Add board outline, keepouts, connector references, and mounting details.
    main_pcb_placeholder();
}
