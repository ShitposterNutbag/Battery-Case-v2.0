use <battery_pack_only.scad>
use <../components/battery_holder.scad>

// Active preview: verified six-cell battery pack seated in the plastic holder only.
// Outer enclosure, lid, PCBs, USB board, buttons, LEDs, and rails are intentionally omitted.

battery_holder();
battery_pack_only();
