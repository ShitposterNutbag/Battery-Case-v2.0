// Common placeholder utilities used by component scaffolds.

module centered_box(size, label_color = "lightgray", alpha = 1.0) {
    color(label_color, alpha)
        cube(size, center = true);
}

module reference_axes(length = 20, radius = 0.4) {
    color("red") rotate([0, 90, 0]) cylinder(h = length, r = radius, center = true, $fn = 16);
    color("green") rotate([90, 0, 0]) cylinder(h = length, r = radius, center = true, $fn = 16);
    color("blue") cylinder(h = length, r = radius, center = true, $fn = 16);
}

module rounded_plate_placeholder(size, corner_radius = 2, label_color = "lightgray", alpha = 1.0) {
    // Lightweight rounded 2D footprint extruded to the requested thickness.
    color(label_color, alpha)
        linear_extrude(height = size[2], center = true)
            offset(r = corner_radius)
                square([size[0] - 2 * corner_radius, size[1] - 2 * corner_radius], center = true);
}
