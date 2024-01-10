/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Belt Tension Pulley Mount
 *
 */
 
$fn = 360;
 
btpm();

module btpm() {
	
//	color([1.0,0,0]) translate([0,-30,-4]) cube([10,10,10]);
	
	difference() {
		color([1.0,0,0]) translate([0,0,-1.25]) cylinder(d=8, h=10);
		translate([0,0,16.75]) cylinder(d=5.25, h=50, center=true);
	}
	
	difference() {

		minkowski() {
			translate([0,0,12.5]) cube([27.5-5,45-5,32.5-5], center=true);
			sphere(2.5);
		}
		
		translate([0,0,16]) cube([20,50,20], center=true);	
		translate([0,0,16.75]) cylinder(d=5.25, h=50, center=true);
		
		// tool hole
		translate([0,15,60]) cylinder(d=7.5, h=100, center=true);
		translate([0,-15,60]) cylinder(d=7.5, h=100, center=true);

		// mounting bolt hole
		translate([0,15,20]) cylinder(d=5.2, h=100, center=true);
		translate([0,-15,20]) cylinder(d=5.2, h=100, center=true);
		
		// countersink hole
//		translate([0,15,48.75+2]) cylinder(d=6.25, h=100, center=true);
//		translate([0,-15,48.75+2]) cylinder(d=6.25, h=100, center=true);
	
	}
	
}
