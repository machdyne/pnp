# Machdyne PNP

## Overview

Machdyne PNP is an open-source project to describe and document the pick-and-place machines that we're using to assist with the assembly of some of our [products](https://machdyne.com).

Instead of a turnkey solution this project will aim to provide examples for anyone who wants (1) to build a custom pick-and-place machine in order to meet their own specific requirements, (2) to understand the machine from the top to bottom, and (3) to have the ability to maintain, modify and repair it.

These machines are designed to work with the [OpenPnP](https://github.com/openpnp/openpnp) software. Instead of attempting to recreate the OpenPnP documentation we will provide links and notes to help you move through the setup process. Our documentation will aim to fill the gaps that we encountered while researching how to build and use such a machine.

### [Machine Eins](machines/eins)

The machine consists of an extruded aluminum frame, linear guide rails, stepper motors, a vacuum pump, a solenoid valve, a controller board, two cameras and a number of 3D-printed parts. The non-printed parts are commonly available. The 3D parts are designed using OpenSCAD. Each part can be printed in about 3 hours or less which allows them to be quickly modified and replaced.

The machine is large (> 1m x 0.6m) but the design is scalable and can be used with a smaller (or larger) frame. The machine is relatively light-weight and must be securely mounted to a sturdy table. It requires a hole in the table for the up-facing camera.

The overall design was inspired by existing open-source pick-and-place machines, primarily the [IndexPnP](https://www.youtube.com/watch?v=YynPThPrJ0o) (the precursor to the [LumenPnP](https://github.com/opulo-inc/lumenpnp)) and [LitePlacer](https://github.com/openpnp/openpnp/wiki/LitePlacer), however all 3D parts have been designed from scratch.

### Machine Zwei

This is a future design based on our experience building and using Eins. Zwei will be more of an assembly assistant than a complete PnP machine. It will be more compact, somewhat portable and it won't require a dedicated table. It is intended for the production of boards with a small number of unique parts, or for placing the most common parts on a larger board (such as decoupling capacitors), or for precisely placing large components.

### [Machdyne AF](https://github.com/machdyne/af)

The [Machdyne AF](https://github.com/machdyne/af) project is a work-in-progress autofeeder system for our PNP machines.

## Funding

This project is being partially funded through the NGI0 Entrust Fund, a fund established by NLnet with financial support from the European Commission's Next Generation Internet programme.

## License

This project is released under the [CERN-OHL-P](LICENSE.txt) license.

The firmware configuration files are released under the GPL3 license.
