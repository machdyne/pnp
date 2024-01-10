/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Belt Clamp
 *
 * This part attaches to the gantry mount (xgm) in order to hold the belt ends in place.
 *
 * Optionally has a mount point for the drag chain.
 *
 */
 
$fn = 36;
 
has_dc_mount = true;
 
gmbc();
 
module gmbc() {
	
	difference() {
	
		union() {
			cube([4,9.5,19.5], center=true);
			
			translate([2,-4,0]) cube([1,0.5,7.5], center=true);
			translate([2,-2,0]) cube([1,0.5,7.5], center=true);
			translate([2,0,0]) cube([1,0.5,7.5], center=true);
			translate([2,2,0]) cube([1,0.5,7.5], center=true);
			translate([2,4,0]) cube([1,0.5,7.5], center=true);
			
		}
		
		rotate([0,90,0]) {
			translate([-6,0,0]) cylinder(d=3.5, h=100, center=true);
			translate([6,0,0]) cylinder(d=3.5, h=100, center=true);
			translate([-6,0,-2.5]) cylinder(d=6, h=5, center=true);
			translate([6,0,-2.5]) cylinder(d=6, h=5, center=true);

		}


	}
	
	if (has_dc_mount) {
	
		translate([-8,-9.5,0]) rotate([90,0,0]) {
		
			difference() {
				
				union() {
					cube([20,24,10], center=true);	
					translate([-10,0,0]) rotate([90,0,0]) cylinder(d=10, h=24, center=true);
				}
		
				translate([-27.5,0,2]) cube([50,14,20], center=true);		
				translate([-25,0,2]) cube([60,16.5,20], center=true);		
		
				translate([-10,0,0]) rotate([90,0,0]) cylinder(d=5, h=30, center=true);

			}

		}
		
	}
	
}