include <scad/parameters/project.scad>
include <scad/parameters/electronics.scad>
use <scad/components/common.scad>

module usb_board_placeholder() {
    rounded_plate_placeholder(usb_board_size, usb_board_corner_radius, color_usb_board, 0.85);

    translate([0, usb_board_size[1] / 2 + usb_connector_depth / 2, usb_board_size[2] / 2 + usb_connector_height / 2])
        color("dimgray", 0.8)
            cube([usb_connector_width, usb_connector_depth, usb_connector_height], center = true);


}

module usb_board() {
    // Reference placeholder only; USB board dimensions remain unverified.
    usb_board_placeholder();
}
