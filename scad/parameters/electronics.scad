// PCB parameters for independent main PCB, LED PCB, and USB board development.
// Verified engineering notebook measurements are labeled below.
// USB board values remain placeholders because final USB measurements are not verified yet.

// Verified main PCB / power board dimensions.
main_pcb_length = 97.0;
main_pcb_width = 49.8;
pcb_thickness_nominal = 2.0;
main_pcb_size = [main_pcb_length, main_pcb_width, pcb_thickness_nominal];

// Placeholder main PCB visualization/mounting values; not final case features.
main_pcb_corner_radius = 3;
main_pcb_standoff_height = 6;
main_pcb_standoff_diameter = 5;
main_pcb_mount_hole_diameter = 2.6;

// Verified main PCB feature dimensions.
dc_jack_opening_width = 9.5;
dc_jack_opening_height = 7.5;
dc_jack_height_above_pcb = 11.4;
power_button_diameter = 5.9;
power_button_height_above_pcb = 6.0;
power_button_near_edge_from_board_edge = 41.0;
power_button_center_from_board_edge = 43.95;
power_button_far_edge_from_board_edge = 46.9;

// Placeholder locations for visible references where only feature size was verified.
dc_jack_placeholder_depth = 10.0;
dc_jack_placeholder_x = -main_pcb_length / 2;
dc_jack_placeholder_y = 0;
power_button_placeholder_y = 0;

// Verified LED/control PCB dimensions.
led_pcb_length = 55.1;
led_pcb_width = 20.8;
led_pcb_thickness_nominal = 2.0;
led_pcb_size = [led_pcb_length, led_pcb_width, led_pcb_thickness_nominal];

// Placeholder LED PCB visualization/mounting values; not final case features.
led_pcb_corner_radius = 2;
led_pcb_standoff_height = 4;
led_pcb_standoff_diameter = 4;
led_pcb_mount_hole_diameter = 2.2;

// Verified LED/control PCB feature dimensions.
control_button_diameter = 2.9;
control_button_height_above_pcb = 6.0;
control_button_near_edge_from_board_edge = 19.2;
control_button_far_edge_from_board_edge = 34.9;
// Calculated midpoint for reference rendering only; not a verified final button center.
control_button_center_approx_from_board_edge = (control_button_near_edge_from_board_edge + control_button_far_edge_from_board_edge) / 2;
led_array_total_length = 14.1;
individual_led_width = 3.0;
top_of_board_to_bottom_of_led_package = 13.8;
top_of_board_to_bottom_edge_of_board = 20.8;

// Verified three-LED array count; packages are centered across the verified outer array span.
led_count = 3;
led_package_height_placeholder = 3.0;
led_spacing = (led_array_total_length - individual_led_width) / (led_count - 1);

// Placeholder USB board and connector reference geometry; unverified.
usb_board_size = [28, 18, 1.6];
usb_board_corner_radius = 2;
usb_board_standoff_height = 4;
usb_board_standoff_diameter = 4;
usb_board_mount_hole_diameter = 2.2;
usb_connector_width = 9;
usb_connector_depth = 7;
usb_connector_height = 3.5;
