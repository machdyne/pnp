/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Limit Switch Mount
 *
 */
 
$fn = 36;
 
lsm();
 
module lsm() {
	
	difference() {
		
		union() {
			
			cube([7.5,2,30], center=true);
			translate([0,2,-10]) cube([7.5,2,10], center=true);
			
		}
		

		rotate([90,0,0]) translate([0,10,0]) cylinder(d=2.5, h=200, center=true);
		rotate([90,0,0]) translate([0,10-9.5,0]) cylinder(d=2.5, h=200, center=true);
		
		rotate([90,0,0]) translate([0,-10,0]) cylinder(d=3.5, h=200, center=true);

		
	}
	
}