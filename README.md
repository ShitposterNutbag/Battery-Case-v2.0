# Battery-Case-v2.0

OpenSCAD scaffold for a custom 6-cell vacuum battery enclosure.

## Project structure

- `scad/parameters/project.scad` — project metadata, display toggles, and shared colors.
- `scad/parameters/battery.scad` — 6-cell battery and holder planning dimensions.
- `scad/parameters/electronics.scad` — main PCB and LED PCB placeholder dimensions.
- `scad/parameters/enclosure.scad` — enclosure/lid placeholder dimensions and assembly positions.
- `scad/components/battery_holder.scad` — independent battery holder module scaffold.
- `scad/components/main_pcb.scad` — independent main PCB module scaffold.
- `scad/components/led_pcb.scad` — independent LED PCB module scaffold.
- `scad/components/usb_board.scad` — independent USB board module scaffold.
- `scad/components/enclosure.scad` — intentionally undesigned enclosure placeholder.
- `scad/components/lid.scad` — intentionally undesigned lid placeholder.
- `scad/assembly/assembly.scad` — complete assembly scaffold for component integration.

## Preview

Open `scad/assembly/assembly.scad` in OpenSCAD to inspect the placeholder assembly.
The enclosure and lid are placeholders only; final enclosure design geometry has not been created yet.
