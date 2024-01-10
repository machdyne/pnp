/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Extrusion End Cap
 *
 */

$fn = 100;

eec();

module eec() {
	
//	color([1.0,0,0]) translate([0.75,0,0]) cube([7.5, 25.25, 20.25], center=true);
//	color([0,0,1.0]) translate([0,0,0]) cube([9, 25.5, 20.5], center=true);
	
	difference() {		
		
		// normal
			
		minkowski() {
			cube([7, 21, 21], center=true);
			sphere(2);
		}
		translate([1.75,0,0]) cube([7.5, 20.25, 20.25], center=true);
			

/*
		// skinny
		minkowski() {
			cube([7, 20, 20], center=true);
			sphere(1);
		}
			
		translate([1.75,0,0]) cube([7.5, 20.25, 20.25], center=true);
*/		
	}
}
