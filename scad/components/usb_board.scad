include <../parameters/project.scad>
include <../parameters/electronics.scad>
use <common.scad>

module usb_board_placeholder() {
    rounded_plate_placeholder(usb_board_size, usb_board_corner_radius, color_usb_board, 0.85);

    translate([0, usb_board_size[1] / 2 + usb_connector_depth / 2, usb_board_size[2] / 2 + usb_connector_height / 2])
        color("dimgray", 0.8)
            cube([usb_connector_width, usb_connector_depth, usb_connector_height], center = true);

    for (x = [-1, 1])
        translate([x * (usb_board_size[0] / 2 - 5), 0, -usb_board_standoff_height / 2])
            color("black", 0.5)
                cylinder(h = usb_board_standoff_height, d = usb_board_standoff_diameter, center = true, $fn = 24);
}

module usb_board() {
    // TODO: Add final USB board outline, connector keepouts, and mounting features.
    usb_board_placeholder();
}
