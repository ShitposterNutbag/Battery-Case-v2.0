include <../parameters/project.scad>
include <../parameters/battery.scad>

// Plastic battery holder/housing reference.
// The repository currently contains one uploaded Polycam scan set for the physical pack:
// 7_5_2026.stl plus matching OBJ/DAE/FBX/GLB/USDZ and texture/reference JPG files.
// This module imports that uploaded STL as a transparent reference instead of inventing a tray.
// No geometry is generated from the scan mesh here; it is positioned only as a visual reference
// around the verified six-cell battery model shown by battery_pack_only().
//
// Extracted STL bounds are recorded in scad/parameters/battery.scad. The exact holder-only
// sub-geometry remains uncertain because the uploaded mesh is a complete scan rather than a
// separately labeled holder part.

module battery_holder_reference_mesh() {
    color(color_battery_holder, battery_holder_reference_alpha)
        rotate(battery_holder_reference_rotation)
            scale([battery_holder_reference_scale, battery_holder_reference_scale, battery_holder_reference_scale])
                translate(-battery_holder_reference_center)
                    import(battery_holder_reference_file, convexity = 10);
}

module battery_holder() {
    battery_holder_reference_mesh();
}
