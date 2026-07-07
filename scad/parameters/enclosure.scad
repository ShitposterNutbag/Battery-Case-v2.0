// Enclosure and lid planning parameters.
// The enclosure is intentionally not designed yet; these values support placeholder assembly only.
include <scad/parameters/battery.scad>
include <scad/parameters/electronics.scad>

enclosure_placeholder_size = [118, 82, 34];
enclosure_wall_nominal = 2.4;
enclosure_corner_radius_placeholder = 6;

lid_placeholder_size = [118, 82, 3];
lid_overlap_placeholder = 1.5;
lid_screw_count_placeholder = 4;
lid_screw_diameter_placeholder = 3;

// Assembly layout/reference coordinate system (not final mount geometry):
//   X = left/right across the battery pack width.
//   Y = battery pack length direction.
//   Z = battery pack height/thickness direction.
//   Origin = center of the verified battery pack envelope.
//
// These positions are only for measured-component layout previews. They do not
// define shell cutouts, rails, screw bosses, lid clips, or exterior styling.
layout_board_gap = board_to_battery_gap;
layout_ribbon_width = 8.0;
layout_ribbon_thickness = 0.6;

// Battery pack remains centered as the assembly datum.
battery_holder_position = [0, 0, 0];

// Main PCB/power board reference: placed at the -Y end of the battery pack,
// with its component side rotated outward so the DC jack and power button face -Y.
main_pcb_position = [
    0,
    -battery_pack_length / 2 - layout_board_gap - pcb_thickness_nominal / 2,
    0
];

// LED/control PCB reference: placed at the +Y end of the battery pack,
// with its LED array side rotated outward so the LEDs face +Y.
led_pcb_position = [
    0,
    battery_pack_length / 2 + layout_board_gap + led_pcb_thickness_nominal / 2,
    0
];

// USB charging board remains a size placeholder, but is shown at the same -Y
// end as the charging electronics with the port facing outward.
usb_board_position = [
    0,
    -battery_pack_length / 2 - layout_board_gap - pcb_thickness_nominal - layout_board_gap - usb_board_size[1] / 2,
    -battery_pack_total_height_with_boards / 2 + 8
];

// Lid/enclosure placeholders remain centered on the battery datum for context only.
lid_position = [0, 0, enclosure_placeholder_size[2] + lid_placeholder_size[2] / 2];
