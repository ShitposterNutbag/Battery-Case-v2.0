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
layout_side_clearance = 2.0;
layout_unverified_usb_offset = 22.0;

// Battery pack remains centered as the assembly datum.
battery_holder_position = [0, 0, 0];

// Main PCB/power board reference: placed on the +X long side of the battery,
// with its component side rotated outward so the DC jack and power button face +X.
main_pcb_position = [
    battery_pack_width / 2 + layout_side_clearance + pcb_thickness_nominal / 2,
    0,
    0
];

// LED/control PCB reference: placed on the -X long side of the battery,
// with its LED array side rotated outward so the LEDs face -X.
led_pcb_position = [
    -battery_pack_width / 2 - layout_side_clearance - led_pcb_thickness_nominal / 2,
    0,
    0
];

// USB board remains an unverified placeholder, intentionally parked off to the
// side of the measured assembly relationship until its real placement is known.
usb_board_position = [
    battery_pack_width / 2 + layout_side_clearance + pcb_thickness_nominal + layout_unverified_usb_offset + usb_board_size[0] / 2,
    0,
    0
];

// Lid/enclosure placeholders remain centered on the battery datum for context only.
lid_position = [0, 0, enclosure_placeholder_size[2] + lid_placeholder_size[2] / 2];
