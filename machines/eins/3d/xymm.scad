/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * X+Y Axis Motor Mount
 *
 * This part attaches a motor to the X and Y axes.
 *
 * Required hardware:
 * - 2 x M5 x 12mm button-head bolts
 * - 2 x M5 t-nuts
 *
 */
 
$fn = 36;
 
ygmm();
 
module ygmm() {

	// size references:
	//	color([1.0,0,0]) cube([50,50,40], center=true);	
	//	translate([0,0,-17]) color([1.0,0,0]) cube([45,50,6], center=true);
	
	difference() {
		
		minkowski() {
			cube([50-5,50-5,40-5], center=true);
			sphere(2.5);
		}
		
		translate([0,0,0]) cube([100,40,28], center=true);
		
		// y axis t nut mount holes
		translate([10,0,-30]) cylinder(d=5.2, h=100);
		translate([-10,0,-30]) cylinder(d=5.2, h=100);
		
		// motor shaft / tool holes
		translate([0,0,0]) cylinder(d=27.5, h=100);
		
		// motor mount holes
		translate([15.5,15.5,-30]) cylinder(d=3.4, h=100);
		translate([-15.5,-15.5,-30]) cylinder(d=3.4, h=100);
		translate([15.5,-15.5,-30]) cylinder(d=3.4, h=100);
		translate([-15.5,15.5,-30]) cylinder(d=3.4, h=100);

		// motor mount tool holes
		translate([15.5,15.5,-40]) cylinder(d=7.5, h=50);
		translate([-15.5,-15.5,-40]) cylinder(d=7.5, h=50);
		translate([15.5,-15.5,-40]) cylinder(d=7.5, h=50);
		translate([-15.5,15.5,-40]) cylinder(d=7.5, h=50);

		
	}

	
}