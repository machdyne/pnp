/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * X Gantry Mount
 *
 * This part mounts the X Gantry to the Y Axes. The same part can be used
 * on the left/right X Axis. The X Axis motor can be mounted directly above this part.
 *
 * This part, when combined with clamps (gmbc), joins the two ends of the belt.
 *
 */
 
$fn = 36;
 
xgm();
 
module xgm() {
	
//	color([1.0,0,0]) translate([0,0,36.25]) cube([50,20,20], center=true);
	
	difference() {

		union() {
			translate([0,0,12.5]) cube([45,45,27.5], center=true);
			
			translate([0,16.3,36.25]) cube([45,12.4,20], center=true);
			translate([0,-16.3,36.25]) cube([45,12.4,20], center=true);
		}

		translate([0,0,14]) cube([30,50,20], center=true);
		translate([-20,0,14]) cube([20,20,20], center=true);	
		
		// x axis mount holes
		rotate([0,90,90]) {
			translate([-35,-10,20]) cylinder(d=3.5, h=100, center=true);
			translate([-35,10,20]) cylinder(d=3.5, h=100, center=true);
			translate([-35,-10,23]) cylinder(d=6.25, h=2.25, center=true);
			translate([-35,10,23]) cylinder(d=6.25, h=2.25, center=true);
			translate([-35,-10,-23]) cylinder(d=6.25, h=2.25, center=true);
			translate([-35,10,-23]) cylinder(d=6.25, h=2.25, center=true);
		}		
		
		// tool holes
		translate([10,10,60]) cylinder(d=8, h=100, center=true);
		translate([10,-10,60]) cylinder(d=8, h=100, center=true);
		translate([-10,10,60]) cylinder(d=8, h=100, center=true);
		translate([-10,-10,60]) cylinder(d=8, h=100, center=true);
		
		// mounting bolt holes
		translate([10,10,20]) cylinder(d=3.25, h=100, center=true);
		translate([10,-10,20]) cylinder(d=3.25, h=100, center=true);
		translate([-10,10,20]) cylinder(d=3.25, h=100, center=true);
		translate([-10,-10,20]) cylinder(d=3.25, h=100, center=true);
		
		// countersink holes
		translate([10,10,48.75+2]) cylinder(d=6.25, h=100, center=true);
		translate([10,-10,48.75+2]) cylinder(d=6.25, h=100, center=true);
		translate([-10,10,48.75+2]) cylinder(d=6.25, h=100, center=true);
		translate([-10,-10,48.75+2]) cylinder(d=6.25, h=100, center=true);

		// belt clamp holes
		rotate([0,90,0]) {
			translate([-14-6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14-6,-16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,-16,0]) cylinder(d=3.25, h=100, center=true);
		}
	
	}
	
}