include <../parameters/project.scad>
include <../parameters/battery.scad>

// Battery-only assembly preview.
// Verified reference envelope: 68.2 mm long x 64.2 mm wide.
// Verified total pack assembly height with boards: 45.9 mm (boards are not modeled here).
// This file intentionally models only the first verified component: six 18650 cells.

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

battery_pack_only();
