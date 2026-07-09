// Battery pack and holder parameters.
// Verified engineering notebook measurements are labeled below.
// Remaining cylindrical-cell details are placeholders for reference visualization only.

// Verified battery assembly envelope.
battery_pack_length = 68.2;
battery_pack_width = 64.2;
battery_pack_total_height_with_boards = 45.9;
battery_cell_count = 6;

// Verified scaffold layout: two rows of three cells.
battery_layout_rows = 2;
battery_layout_columns = 3;
cell_count = battery_cell_count;
cell_columns = battery_layout_columns;
cell_rows = battery_layout_rows;

// Verified 18650 cell reference dimensions and spacing.
cell_diameter = 18;
cell_length = 65;
cell_clearance = 0;
cell_spacing_x = cell_diameter;
cell_spacing_z = cell_diameter;
cell_spacing = cell_spacing_x;

// Derived verified compact cell bundle envelope (cells only, no plastic).
battery_cell_bundle_width = (cell_columns - 1) * cell_spacing_x + cell_diameter;
battery_cell_bundle_length = cell_length;
battery_cell_bundle_height = (cell_rows - 1) * cell_spacing_z + cell_diameter;

// Battery holder/housing parameters.
// Verified/reference outer footprint follows the measured battery pack envelope.
battery_holder_outer_length = battery_pack_length;
battery_holder_outer_width = battery_pack_width;

// Visual/reference placeholders until the plastic holder can be measured directly.
battery_holder_cell_clearance = 0.6;
battery_holder_wall_thickness = (battery_holder_outer_width - battery_cell_bundle_width - 2 * battery_holder_cell_clearance) / 2;
battery_holder_end_wall_thickness = (battery_holder_outer_length - battery_cell_bundle_length - 2 * battery_holder_cell_clearance) / 2;
battery_holder_floor_thickness = 2.4;
battery_holder_corner_radius = 3;
battery_holder_alpha = 0.45;

// Derived holder layout helpers.
battery_holder_inner_width = battery_cell_bundle_width + 2 * battery_holder_cell_clearance;
battery_holder_inner_length = battery_cell_bundle_length + 2 * battery_holder_cell_clearance;
battery_holder_wall_height = battery_cell_bundle_height + 2 * battery_holder_cell_clearance;
battery_holder_floor_z = -battery_cell_bundle_height / 2 - battery_holder_cell_clearance - battery_holder_floor_thickness / 2;
battery_holder_side_wall_center_x = battery_holder_inner_width / 2 + battery_holder_wall_thickness / 2;
battery_holder_end_wall_center_y = battery_holder_inner_length / 2 + battery_holder_end_wall_thickness / 2;
battery_holder_size = [
    battery_holder_outer_width,
    battery_holder_outer_length,
    battery_holder_floor_thickness + battery_holder_wall_height
];
