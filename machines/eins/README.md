# Machdyne PNP - Eins

## Overview

Eins is a simple modular open-source pick and place machine. It is a work-in-progress and this repo will be kept up-to-date as improvements are made. Please feel free to open issues with questions or suggestions.

![eins](eins.jpg)

This photo is from Jan 2024. You may notice an unused backup solenoid valve on the right side and some passive auto feeder prototypes. The tool changer and multi-strip feeders are not part of this project but can be found below:

  * [Tool changer](https://github.com/richardklingler/openpnp/tree/master/openscad/toolchanger)
  * [Strip feeder](https://www.thingiverse.com/thing:5711658)

The two Y axis motors are connected to a single driver, this is a feature of the controller board.

There is a [video](https://twitter.com/machdyne/status/1705911534369574982) of the machine in action.

## Specifications

| Attribute | Value |
| --------- | ----- |
| Table size | 1200mm x 750mm |
| Machine size | ~1000mm x ~650mm |
| Work area | ~850mm x ~450mm |
| Minimum tested part size | 0402 |
| Max placement speed | YTBD |

## Documentation

  * [Assembly Guide](docs/ASSEMBLY.md)

## Parts

The 3D-printable parts are located in the [3d](3d) directory as [OpenSCAD](https://openscad.org) files. You can use OpenSCAD to customize and generate the [STL](3d/stl) files, which can then be sliced and printed.

| Part | Model | Quantity | Description |
| ---- | ----- | -------- | ----------- |
| [btpm](3d/stl/btpm.stl) | ![btpm](3d/img/btpm.png) | 3 | **Belt tension pulley mount.** Holds the belt in place at the opposite end of the axis as the motor, using a pulley and steel dowel. |
| [dc](3d/stl/dc.stl) | ![dc](3d/img/dc.png) | 1 | **Drag chain links, clips and tower.** Keeps wires, cables and tubing lifted above the work area. The current design sags a bit when the chain is long and needs to be improved. We recommend using a commodity dragchain instead. |
| [dfcm](3d/stl/dfcm.stl) | ![dfcm](3d/img/dfcm.png) | 4 | **Down-facing camera mount.** Holds the down-facing camera. Attaches to the bottom rear side of the Z Gantry Mount Faceplate. |
| [eec](3d/stl/eec.stl) | ![eec](3d/img/eec.png) | 1 | **Extrusion end cap.** Covers sharp edges at the ends of the aluminum extrusions. |
| [gmbc](3d/stl/gmbc.stl) | ![gmbc](3d/img/gmbc.png) | 6 | **Gantry mount belt clamp.** Attaches belt ends to gantry mounts. |
| [lsm](3d/stl/lsm.stl) | ![lsm](3d/img/lsm.png) | 2 | **Limit switch mount.** Attaches X and Y limit switches to the frame. |
| [mbe](3d/stl/mbe.stl) | ![mbe](3d/img/mbe.png) | 1 | **Mainboard enclosure.** Mounts the controller board to the frame. Not actually enclosed at the moment. |
| [nsd](3d/stl/nsd.stl) | ![nsd](3d/img/nsd.png) | 1 | **Nozzle shade disc.** Reduces reflections from the up-facing camera lights on motor. |
| [pcbh](3d/stl/pcbh.stl) | ![pcbh](3d/img/pcbh.png) | 1 | **PCB holder.** Holds the PCB during assembly. Top screw also acts as homing position. |
| [ppcb](3d/stl/ppcb.stl) | ![ppcb](3d/img/ppcb.png) | 1 | **Power plug connection box.** Adapts the power supply plug to the controller board. |
| [sfm](3d/stl/sfm.stl) | ![svm](3d/img/sfm.png) | 1 | **Strip feeder manual.** Manual single feeder for 8mm tapes. |
| [svm](3d/stl/svm.stl) | ![svm](3d/img/svm.png) | 1 | **Solenoid valve mount.** Mounts the solenoid valve to the frame. |
| [tf](3d/stl/tf.stl) | ![tf](3d/img/tf.png) | 1 | **Tray feeder.** Generic customizable tray feeder for ICs. Can be attached to the table with tape. |
| [ufcm](3d/stl/ufcm.stl) | ![ufcm](3d/img/ufcm.png) | 1 | **Up-facing camera mount.** Mounts the bottom camera underneath the table. |
| [xgm](3d/stl/xgm.stl) | ![xgm](3d/img/xgm.png) | 2 | **X gantry mount.** Mounts the X gantry to the Y axis rail. |
| [xymm](3d/stl/xymm.stl) | ![xymm](3d/img/xymm.png) | 3 | **X+Y motor mount.** Mounts the X and Y motors to their axes. |
| [xytm](3d/stl/xytm.stl) | ![xytm](3d/img/xytm.png) | 4 | **X+Y table mount.** Mounts the machine to the table. |
| [zgm](3d/stl/zgm.stl) | ![zgm](3d/img/zgm.png) | 1 | **Z gantry mount, faceplate and assembly mount.** The Z gantry mount ([zgm](3d/stl/zgm.stl)) connects to the belt ends and sits on the X axis. Attached to the zgm is the Z gantry mount faceplate ([zgmfp](3d/stl/zgmfp.stl)) where the Z axis rails are mounted, and to those rails, the Z assembly mount ([zam](3d/stl/zam.stl)), which moves along the Z axis. The Z limit switch attaches to the upper left of the faceplate. |

## Bill of Materials

| Part | Quantity | Description | Example P/N |
| ---- | -------- |------------ | ----------- |
| Controller board | 1 | BIGTREETECH Octopus V1.1 Controller board + 4x TMC2209 drivers | KINPRINT-UUU001949 |
| (a) Stepper motors | 4 | 42x42x38mm, 1.68A, 1.8deg, 1.65ohm | 800-001-0782 |
| or (b) Stepper motors | 4 | 42x42x38mm, 1.5A, 0.9deg, 2ohm | 17ME15-1504S |
| Hollow stepper motor set | 1 | 28mm NEMA 11 hollow shaft, D6 rotary joint, CP40 holder | |
| Nozzles | 1+ | CP40 nozzles, N045, N14, N24 | |
| Power supply | 1 | Enclosed desktop supply, 24V 5A 120W, 2.5mm plug | GST120A24-P1M |
| Power jack | 1 | 2.5mm power socket | DC-099 |
| Cameras | 2 | 1MP USB modules | HBV-W202012HD |
| LEDs | 12 | White LEDs 5mm | |
| Vacuum pump | 1 | 24V 10-15L/min 6mm ID | B0BVZR96HN |
| Solenoid valve | 1 | 24V N/O 4mm ID | | 
| Pneumatic tubing | 1 | 6mm ID + 4mm ID + adapters + couplers | | 
| Limit switches | 3 | Roller lever 3 pin limit switches | B07F9QKTQQ |
| Frame X axes | 3 | Aluminum extrusion, 2020V, 1000mm | AW051-2020V-1000 |
| Frame Y axes | 2 | Aluminum extrusion, 2020V, 600mm | AW051-2020V-600 |
| Rail X axis | 1 | Linear rail, MGN12H, 900mm | MGN12H1R900-1 |
| Rail Y axes | 2 | Linear rails, MGN12H, 500mm | 4801151PQ8 |
| Rail Z axes | 2 | Linear rails, MGN9H, 100mm | B08GWVV75C |
| Steel dowels | 3 | 5mm diameter x 25mm long | B07NXPQ717 |
| GT2 belt kits | 2 | Belts and pulleys, 6mm wide, 2mm pitch | B07RBK4GRL |
| Drag chain | 1 | 10x20 drag chain; 1m | 734900622184 |

Note: Use the (a) stepper motors if more concerned with speed; or the (b) stepper motors if more concerned with accuracy.

You will need an assortment of lengths of M3 and M5 bolts, nuts and T-nuts and screws. You will also need some M2 bolts and nuts to attach the limit switches.

## Tools

In addition to a 3D printer you will likely need a variety of tools, including screwdrivers, wire strippers, crimpers, a soldering iron, a drill, etc.
