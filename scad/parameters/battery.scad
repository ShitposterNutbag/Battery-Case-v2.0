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

// Verified 18650 cell reference dimensions and pack spacing.
cell_diameter = 18;
cell_length = 65;
cell_clearance = 0;
cell_spacing_x = cell_diameter;
cell_spacing_z = cell_diameter;
cell_spacing = cell_spacing_x;

// Placeholder holder block uses verified assembly envelope until final holder geometry is designed.
battery_holder_wall = 0;
battery_holder_floor = 0;
battery_holder_height = battery_pack_total_height_with_boards;
battery_holder_size = [
    battery_pack_width,
    battery_pack_length,
    battery_pack_total_height_with_boards
];
