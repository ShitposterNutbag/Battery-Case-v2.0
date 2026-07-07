include <scad/parameters/project.scad>
include <scad/parameters/enclosure.scad>
use <scad/components/common.scad>

module enclosure_placeholder() {
    // Intentional placeholder only. Do not treat this as enclosure design geometry.
    color(color_enclosure, placeholder_alpha)
        cube(enclosure_placeholder_size, center = true);
}

module enclosure() {
    // TODO: Design enclosure shell, mounts, openings, bosses, and clearances in a future pass.
    enclosure_placeholder();
}
