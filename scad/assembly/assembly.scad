include <../parameters/project.scad>
include <../parameters/enclosure.scad>
use <../components/common.scad>
use <../components/battery_holder.scad>
use <../components/main_pcb.scad>
use <../components/led_pcb.scad>
use <../components/enclosure.scad>
use <../components/lid.scad>

module assembly_scaffold() {
    if (show_axes)
        reference_axes(35);

    if (show_placeholders) {
        enclosure();

        translate(battery_holder_position)
            battery_holder();

        translate(main_pcb_position)
            main_pcb();

        translate(led_pcb_position)
            led_pcb();

        translate(lid_position)
            lid();
    }
}

assembly_scaffold();
