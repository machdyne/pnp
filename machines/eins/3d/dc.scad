/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Drag Chain Link & Accessories
 *
 */

$fn = 100;

//dct();
dcl();
//color([0,0,1]) dcc();

// drag chain link
module dcl() {
	
	difference() {
		union() {
			cube([20,20,10], center=true);
			translate([10,0,0]) cube([20,16,10], center=true);
			translate([20,0,0]) rotate([90,0,0]) cylinder(d=10, h=16, center=true);
			translate([20,0,0]) rotate([90,0,0]) cylinder(d=4.5, h=20, center=true);
			
			translate([-10,0,0]) rotate([90,0,0]) cylinder(d=10, h=20, center=true);
		}
		
		translate([0,0,2]) cube([50,13,11], center=true);		
		translate([-27.5,0,2]) cube([50,14,20], center=true);		
		translate([-25,0,2]) cube([60,16.5,20], center=true);		
		
		translate([-10,0,0]) rotate([90,0,0]) cylinder(d=5, h=30, center=true);
		
		// clip notches
		translate([0,10,-2.5]) cube([2,1.5,5], center=true);
		translate([0,-10,-2.5]) cube([2,1.5,5], center=true);
		
	}
	

}

// drag chain clip
module dcc() {

	translate([0,0,6]) cube([1.9,21,2], center=true);
	
	translate([0,11.25,0]) cube([1.9,2,14], center=true);
	translate([0,-11.25,0]) cube([1.9,2,14], center=true);
	
	translate([0,-9.25,-6]) cube([1.9,5,2], center=true);
	translate([0,9.25,-6]) cube([1.9,5,2], center=true);
	
	translate([0,9.8,-2.55]) cube([1.9,0.9,4.9], center=true);
	translate([0,-9.8,-2.55]) cube([1.9,0.9,4.9], center=true);
	
}

// drag chain tower
module dct() {
	
	difference() {
		
		union() {
			minkowski() {
				cube([20-5,20-5,90], center=true);
				sphere(2.5);
			}
			translate([0,0,-49]) cube([20,50,8], center=true);
	
			translate([-2.5,0,39.5]) {
				rotate([90,0,0]) {
					translate([10,0,0]) cube([20,16,10], center=true);
					translate([20,0,0]) rotate([90,0,0]) cylinder(d=10, h=16, center=true);
					translate([20,0,0]) rotate([90,0,0]) cylinder(d=4.5, h=21, center=true);
				}
			}
		}

		rotate([0,0,90]) {
			translate([-17.5,0,0]) cylinder(d=5.5, h=200, center=true);
			translate([17.5,0,0]) cylinder(d=5.5, h=200, center=true);
		}
		
	}
		
}

module roundedcube(xx, yy, height, radius)
{
    translate([0,0,height/2])
    hull()
    {
        translate([radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,yy-radius,0])
        cylinder(height,radius,radius,true);

        translate([radius,yy-radius,0])
        cylinder(height,radius,radius,true);
    }
}