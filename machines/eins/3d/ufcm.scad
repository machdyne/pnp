/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Up-Facing Camera Mount
 *
 */

//ufcm();
ufcmfp();

module ufcmfp() {
		difference() {
		
		union() {
			translate([-40/2,-60/2,0]) roundedcube(40,60,2,5);

		}

		translate([-24/2,-24/2,-5]) roundedcube(24,24,10,5);
		
		translate([0,-25,-5]) cylinder(d=3.25, h=50, $fn=36);
		translate([0,25,-5]) cylinder(d=3.25, h=50, $fn=36);

		translate([0,-25,1]) cylinder(d=5.5, h=50, $fn=36);
		translate([0,25,1]) cylinder(d=5.5, h=50, $fn=36);
		
	}
}

module ufcm() {

//	translate([0,0,-18+3]) color([1.0,0,0]) cube([30,25,1], center=true);
	
	difference(){
		union() {
			translate([0,13.25,-16.5]) color([0,1.0,0]) cube([33,4,3], center=true);
			translate([12,11.5,-16.5]) color([1.0,1.0,0]) cube([4.5,3,3], center=true);
			translate([-12,11.5,-16.5]) color([1.0,1.0,0]) cube([4.5,3,3], center=true);
		}
		translate([-12,-12.5,-30]) cylinder(d=3.25, h=25, $fn=36);
		translate([12,-12.5,-30]) cylinder(d=3.25, h=25, $fn=36);
		translate([-12,12.5,-30]) cylinder(d=3.25, h=25, $fn=36);
		translate([12,12.5,-30]) cylinder(d=3.25, h=25, $fn=36);
	}
	
	difference() {
		
		union() {
			translate([-60/2,-60/2,0]) roundedcube(60,60,2,5);
			translate([-35/2,-35/2,-20]) roundedcube(35,35,20,5);
	
		}

		translate([0,-35/2+2,-10]) cube([30.5,70,16], center=true);
		translate([0,0,0]) cylinder(d=30, h=5, center=true);

		translate([-12,-12.5,-30]) cylinder(d=3.25, h=15, $fn=36);
		translate([12,-12.5,-30]) cylinder(d=3.25, h=15, $fn=36);
		translate([-12,12.5,-30]) cylinder(d=3.25, h=15, $fn=36);
		translate([12,12.5,-30]) cylinder(d=3.25, h=15, $fn=36);

		translate([-12,-12.5,-3]) cylinder(d=10, h=20, $fn=36);
		translate([12,-12.5,-3]) cylinder(d=10, h=15, $fn=36);
		translate([-12,12.5,-3]) cylinder(d=10, h=15, $fn=36);
		translate([12,12.5,-3]) cylinder(d=10, h=15, $fn=36);

		
		translate([-25,0,-5]) cylinder(d=3.25, h=50, $fn=36);
		translate([25,0,-5]) cylinder(d=3.25, h=50, $fn=36);
		translate([0,-25,-5]) cylinder(d=3.25, h=50, $fn=36);
		translate([0,25,-5]) cylinder(d=3.25, h=50, $fn=36);
		
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