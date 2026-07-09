include <../parameters/project.scad>
include <../parameters/battery.scad>

// Battery-only reference modules.
// Verified: six 18650 cells, 2 rows x 3 columns, 18 mm diameter x 65 mm long.
// The cells lie flat with their length on the Y axis and the 3-column pack width on X.

module battery_pack_cell() {
    color(color_reference, 1.0)
        rotate([90, 0, 0])
            cylinder(h = cell_length, d = cell_diameter, center = true, $fn = 96);
}

module battery_pack_only() {
    for (row = [0 : battery_layout_rows - 1])
        for (col = [0 : battery_layout_columns - 1])
            translate([
                (col - (battery_layout_columns - 1) / 2) * cell_spacing_x,
                0,
                (row - (battery_layout_rows - 1) / 2) * cell_spacing_z
            ])
                battery_pack_cell();
}
