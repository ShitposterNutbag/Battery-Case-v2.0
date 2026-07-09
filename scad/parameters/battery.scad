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

// Uploaded holder / complete battery-pack scan reference.
// Inspected uploaded 3D/reference files in the repo root:
// - 7_5_2026.stl, 7_5_2026.obj, 7_5_2026.dae, 7_5_2026.fbx, 7_5_2026.glb, 7_5_2026USDZ.usdz
// - 7_5_2026.mtl and JPG texture/reference files listed by the MTL.
// The STL is used as the OpenSCAD visual reference because it imports directly and has the same
// Polycam scan geometry as the other 7_5_2026 mesh exports.
battery_holder_reference_file = "../../7_5_2026.stl";
battery_holder_reference_scale = 1000; // Uploaded mesh coordinates are meters; preview units are millimeters.
battery_holder_reference_alpha = 0.35;

// Extracted from 7_5_2026.stl binary triangle vertices, in source mesh units (meters).
battery_holder_reference_min = [-0.055097050964832306, 0.042972467839717865, -0.04250596463680267];
battery_holder_reference_max = [0.026308005675673485, 0.10483654588460922, 0.06252926588058472];
battery_holder_reference_center = (battery_holder_reference_min + battery_holder_reference_max) / 2;
battery_holder_reference_size = (battery_holder_reference_max - battery_holder_reference_min) * battery_holder_reference_scale;

// Orientation is intentionally neutral until a holder-only datum is identified in the scan.
// The imported mesh is centered on the verified battery-cell preview as a transparent reference.
battery_holder_reference_rotation = [0, 0, 0];

// The measured battery envelope remains the verified pack reference. The uploaded scan is visual
// reference only, and holder-only wall/floor/corner dimensions remain uncertain until separable
// holder features are identified or measured from a clearer source.
battery_holder_size = [
    battery_pack_width,
    battery_pack_length,
    battery_pack_total_height_with_boards
];
