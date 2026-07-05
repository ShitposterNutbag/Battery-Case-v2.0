// Enclosure and lid planning parameters.
// The enclosure is intentionally not designed yet; these values support placeholder assembly only.

enclosure_placeholder_size = [118, 82, 34];
enclosure_wall_nominal = 2.4;
enclosure_corner_radius_placeholder = 6;

lid_placeholder_size = [118, 82, 3];
lid_overlap_placeholder = 1.5;
lid_screw_count_placeholder = 4;
lid_screw_diameter_placeholder = 3;

// Component placement scaffold inside the future enclosure coordinate space.
battery_holder_position = [0, -8, 4];
main_pcb_position = [0, 24, 18];
led_pcb_position = [0, -36, 20];
usb_board_position = [42, 0, 18];
lid_position = [0, 0, enclosure_placeholder_size[2] + lid_placeholder_size[2] / 2];
