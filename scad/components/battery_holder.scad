include <scad/parameters/project.scad>
include <scad/parameters/battery.scad>
use <scad/components/common.scad>

module battery_cell_placeholder() {
    color(color_reference, placeholder_alpha)
        rotate([90, 0, 0])
            cylinder(h = cell_length, d = cell_diameter, center = true, $fn = 48);
}

module battery_holder_placeholder() {
    color(color_battery_holder, placeholder_alpha)
        cube(battery_holder_size, center = true);

    for (row = [0 : cell_rows - 1])
        for (col = [0 : cell_columns - 1])
            translate([
                (col - (cell_columns - 1) / 2) * cell_spacing,
                0,
                (row - (cell_rows - 1) / 2) * cell_spacing / 1.8
            ]) battery_cell_placeholder();
}

module battery_holder() {
    // TODO: Replace placeholder block and cell references with the final holder design.
    battery_holder_placeholder();
}
