// Battery pack and holder parameters.
// Verified engineering notebook measurements are labeled below.

// Verified battery assembly envelope including the attached board stack.
battery_pack_length = 68.2;
battery_pack_width = 64.2;
battery_pack_total_height_with_boards = 45.9;
battery_cell_count = 6;

// Physical pack layout: three 18650 cells across the width by two cells high.
battery_layout_rows = 2;
battery_layout_columns = 3;
cell_count = battery_cell_count;
cell_columns = battery_layout_columns;
cell_rows = battery_layout_rows;

// Actual 18650 cells used for the reference assembly.
cell_diameter = 18.0;
cell_length = 65.0;
cell_spacing_x = battery_pack_width / cell_columns;
cell_spacing_z = cell_diameter;
cell_spacing = cell_spacing_x;

// Reference holder envelope matches the measured assembly dimensions. It is a
// visual datum only, not final shell/mount geometry.
battery_holder_wall = 1.0;
battery_holder_floor = 1.0;
battery_holder_height = battery_pack_total_height_with_boards;
battery_holder_size = [
    battery_pack_width,
    battery_pack_length,
    battery_pack_total_height_with_boards
];
