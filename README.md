# Battery-Case-v2.0

OpenSCAD scaffold for a custom 6-cell vacuum battery enclosure.

## Project structure

- `scad/parameters/project.scad` - project metadata, display toggles, and shared colors.
- `scad/parameters/battery.scad` - 6-cell battery and holder planning dimensions.
- `scad/parameters/electronics.scad` - main PCB and LED PCB placeholder dimensions.
- `scad/parameters/enclosure.scad` - enclosure/lid placeholder dimensions and assembly positions.
- `scad/components/battery_holder.scad` - independent battery holder module scaffold.
- `scad/components/main_pcb.scad` - independent main PCB module scaffold.
- `scad/components/led_pcb.scad` - independent LED PCB module scaffold.
- `scad/components/usb_board.scad` - independent USB board module scaffold.
- `scad/components/enclosure.scad` - intentionally undesigned enclosure placeholder.
- `scad/components/lid.scad` - intentionally undesigned lid placeholder.
- `scad/assembly/assembly.scad` - complete assembly scaffold for component integration.


## Verified Measurements

The OpenSCAD scaffold now uses verified engineering notebook dimensions for the reference components only. The enclosure, lid, mounting features, openings, rails, screw bosses, styling, and USB board measurements remain placeholders until they are separately verified and designed.

### Battery assembly

- Overall battery pack envelope: 68.2 mm length x 64.2 mm width x 45.9 mm total height with boards.
- Cell count/layout: 6 cells in a 2 row x 3 column arrangement.

### Main PCB / power board

- Board envelope: 97.0 mm length x 49.8 mm width x 2.0 mm nominal thickness.
- DC jack reference: 9.5 mm opening width x 7.5 mm opening height, 11.4 mm above PCB.
- Power button reference: 5.9 mm diameter, 6.0 mm above PCB, with near/center/far edge measurements of 41.0 mm / 43.95 mm / 46.9 mm from the measured board edge.

### LED/control PCB

- Board envelope: 55.1 mm length x 20.8 mm width x 2.0 mm nominal thickness.
- Control button reference: 2.9 mm diameter, 6.0 mm above PCB, with verified near/far edge measurements of 19.2 mm / 34.9 mm from the measured board edge; any rendered midpoint is calculated for approximate reference only.
- Three-LED array reference: 14.1 mm verified total array length across 3 LEDs, 3.0 mm individual LED width, and 13.8 mm from top of board to bottom of LED package.


## Assembly Layout

`scad/assembly/assembly.scad` is a measured-component layout preview only. It shows the intended relationship between the verified battery pack, main PCB/power board, LED/control PCB, and an unverified USB placeholder; it is not final enclosure or mounting geometry.

Coordinate system used by `scad/parameters/enclosure.scad`:

- **X** = left/right across the battery pack width.
- **Y** = battery pack length direction.
- **Z** = battery pack height/thickness direction.
- **Origin** = center of the verified battery pack envelope.

Reference positions in the assembly preview:

- The battery pack/holder placeholder is centered at the origin and remains the assembly datum.
- The main PCB/power board is placed on the **+X long side** of the battery pack. Its component side is oriented outward so the DC jack and power button face away from the battery pack.
- The LED/control PCB is placed on the **-X long side** of the battery pack. Its component side is oriented outward so the LED array faces away from the battery pack.
- The USB board remains an unverified placeholder and is intentionally parked farther off to the +X side until its physical placement is measured.

The enclosure and lid are still placeholders only. This layout does not add or imply shell cutouts, rails, screw bosses, lid clips, exterior styling, or final mount geometry.

## Preview

Open `scad/assembly/assembly.scad` in OpenSCAD to inspect the placeholder assembly.
The enclosure and lid are placeholders only; final enclosure design geometry has not been created yet.
