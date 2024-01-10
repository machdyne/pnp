/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Nozzle Shade Disc
 *
 * This should be printed in a matte color, it sits above the nozzle.
 *
 */

$fn = 36;

nsd();

module nsd() {
	
	difference() {
		cylinder(d=30, h=1, center=true);
		cylinder(d=7.5, h=10, center=true);
		translate([0,50,0]) cube([1.5,100,10], center=true);
	}
	
}