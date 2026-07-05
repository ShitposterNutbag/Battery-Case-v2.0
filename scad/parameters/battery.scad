// Battery pack and holder parameters.
// Defaults describe a 6-cell cylindrical-cell layout scaffold, not final design geometry.

cell_count = 6;
cell_diameter = 18.5;
cell_length = 65.5;
cell_spacing = 20.5;
cell_clearance = 0.5;

// Scaffold layout: two rows of three cells.
cell_columns = 3;
cell_rows = 2;

battery_holder_wall = 2.0;
battery_holder_floor = 2.0;
battery_holder_height = cell_diameter + battery_holder_floor + 4.0;

battery_holder_size = [
    (cell_columns - 1) * cell_spacing + cell_diameter + 2 * battery_holder_wall,
    cell_length + 2 * battery_holder_wall,
    battery_holder_height
];
