include <scad/parameters/project.scad>
include <scad/parameters/battery.scad>
use <scad/components/common.scad>

module battery_cell_placeholder() {
    color("steelblue", 0.85)
        rotate([90, 0, 0])
            cylinder(h = cell_length, d = cell_diameter, center = true, $fn = 72);

    // Positive terminal reference button.
    translate([0, cell_length / 2 + 0.35, 0])
        color("silver", 0.95)
            rotate([90, 0, 0])
                cylinder(h = 0.7, d = 9, center = true, $fn = 48);
}

module battery_holder_envelope_reference() {
    // Measured 68.2 x 64.2 x 45.9 mm envelope shown as a translucent datum,
    // not as a solid battery block and not as final enclosure geometry.
    color(color_battery_holder, 0.12)
        cube(battery_holder_size, center = true);

    // Thin end plates visually indicate the measured pack length without hiding cells.
    for (y = [-1, 1])
        translate([0, y * battery_pack_length / 2, 0])
            color(color_battery_holder, 0.35)
                cube([battery_pack_width, battery_holder_wall, battery_pack_total_height_with_boards], center = true);
}

module battery_holder_placeholder() {
    battery_holder_envelope_reference();

    for (row = [0 : cell_rows - 1])
        for (col = [0 : cell_columns - 1])
            translate([
                (col - (cell_columns - 1) / 2) * cell_spacing_x,
                0,
                (row - (cell_rows - 1) / 2) * cell_spacing_z
            ]) battery_cell_placeholder();
}

module battery_holder() {
    // Reference model only. Do not add final rails, bosses, cutouts, or shell geometry here.
    battery_holder_placeholder();
}
