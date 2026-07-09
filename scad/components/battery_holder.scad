include <../parameters/project.scad>
include <../parameters/battery.scad>

// Plastic battery holder/housing reference.
// Verified dimensions come from scad/parameters/battery.scad:
// - battery footprint envelope: 68.2 mm length x 64.2 mm width
// - 6x 18650 cells in a 2 row x 3 column layout, 18 mm diameter x 65 mm long
// Visual/reference placeholders: wall thickness, floor thickness, clearance, and corner radius.
// This is not the outer enclosure and intentionally contains no boards, lid, rails, buttons, LEDs, or USB/DC features.

module holder_bar(size, position) {
    translate(position)
        color(color_battery_holder, battery_holder_alpha)
            cube(size, center = true);
}

module holder_floor() {
    translate([0, 0, battery_holder_floor_z])
        color(color_battery_holder, battery_holder_alpha)
            linear_extrude(height = battery_holder_floor_thickness, center = true)
                offset(r = battery_holder_corner_radius)
                    square([
                        battery_holder_outer_width - 2 * battery_holder_corner_radius,
                        battery_holder_outer_length - 2 * battery_holder_corner_radius
                    ], center = true);
}

module battery_holder() {
    // A simple open-top tray inferred from the reference pack orientation: floor, left/right walls,
    // and end lips around the compact 3x2 cell bundle. Cells remain visible in the preview.
    wall_z = battery_holder_floor_z + battery_holder_floor_thickness / 2 + battery_holder_wall_height / 2;

    union() {
        holder_floor();

        for (side = [-1, 1])
            holder_bar(
                [battery_holder_wall_thickness, battery_holder_outer_length, battery_holder_wall_height],
                [side * battery_holder_side_wall_center_x, 0, wall_z]
            );

        for (end = [-1, 1])
            holder_bar(
                [battery_holder_inner_width, battery_holder_end_wall_thickness, battery_holder_wall_height],
                [0, end * battery_holder_end_wall_center_y, wall_z]
            );
    }
}
