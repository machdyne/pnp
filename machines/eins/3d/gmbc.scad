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
 
//gmbc(); // belt clamp + optional custom dragchain
gmbc_dcc(); // dual belt clamp + commodity dragchain
 
module gmbc(has_dc_mount=false) {
	
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

 
module gmbc_dcc() {

	difference() {
	
		union() {
			cube([4,42.5,19.5], center=true);
			
			translate([2,-4-16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,-2-16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,0-16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,2-16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,4-16,0]) cube([1.25,0.5,7.5], center=true);

			translate([2,-4+16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,-2+16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,0+16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,2+16,0]) cube([1.25,0.5,7.5], center=true);
			translate([2,4+16,0]) cube([1.25,0.5,7.5], center=true);
			
		}
		
		rotate([0,90,0]) {
			translate([-6,16,0]) cylinder(d=3.5, h=100, center=true);
			translate([6,16,0]) cylinder(d=3.5, h=100, center=true);
			translate([-6,16,-2.5]) cylinder(d=6, h=5, center=true);
			translate([6,16,-2.5]) cylinder(d=6, h=5, center=true);

			translate([-6,-16,0]) cylinder(d=3.5, h=100, center=true);
			translate([6,-16,0]) cylinder(d=3.5, h=100, center=true);
			translate([-6,-16,-2.5]) cylinder(d=6, h=5, center=true);
			translate([6,-16,-2.5]) cylinder(d=6, h=5, center=true);
			
			translate([0,5,-5]) cylinder(d=6, h=30);	
			translate([0,-5,-5]) cylinder(d=6, h=30);	

		}


	}

	translate([-13,0,0]) rotate([90,0,0]) {
			
			difference() {

				
				union() {
					minkowski() {
						cube([30-2,24-2,18], center=true);	
						sphere(1);
					}
				}
		
				rotate([0,90,0]) translate([5,0,-30]) cylinder(d=4, h=25);	
				rotate([0,90,0]) translate([-5,0,-30]) cylinder(d=4, h=25);	
			
				rotate([0,90,0]) translate([5,0,0]) cylinder(d=6, h=25);	
				rotate([0,90,0]) translate([-5,0,0]) cylinder(d=6, h=25);	
				
				translate([-10,-8,-10]) cube([16,16,20]);
				
			}

		}
	
}




