/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Down-Facing Camera Mount (for W202012HD cameras)
 *
 */

$fn = 36;

//dfcmt();
//dfcmc();
dfcm();

// clip
module dfcmc() {
	difference() {
		union() {
			translate([-40/2-8.5, -40/2, 10]) roundedcube(7.5,40,2,2.5);			
			translate([-40/2-4.75-2, -40/2+20, 10]) cube([1,15,1], center=true);
			translate([-40/2-4.75+2, -40/2+20, 10]) cube([1,15,1], center=true);
			translate([-40/2-4.75, -40/2+20, 10]) cube([1,15,1], center=true);
		}
		translate([-25,12,-20]) cylinder(d=3.25, h=50, $fn=36);
		translate([-25,-12,-20]) cylinder(d=3.25, h=50, $fn=36);
	}
}

// tool for installing the camera mount
module dfcmt() {

	difference() {
		union() {
			cube([100,10,3], center=true);
			translate([-50,0,1]) cylinder(d=10, h=5, center=true);
		}
		translate([-50,0,-0.5]) cylinder(d=7, h=5, $fn=6);
	}
}

module dfcm() {

	difference() {

		union() {
			translate([-40/2-10, -40/2, 0]) roundedcube(50,40,4,5);
			translate([0,-20,8]) cube([40,4,16], center=true);
		}
		
		translate([0,-35/2+2,-10]) cube([30.5,70,16], center=true);
		translate([0,0,10]) cylinder(d=30, h=40, center=true);
		
		translate([6,12.5,10]) cylinder(d=8.5, h=40, center=true);
		translate([-6,12.5,10]) cylinder(d=8.5, h=40, center=true);
		translate([6,-12.5,10]) cylinder(d=8.5, h=40, center=true);
		translate([-6,-12.5,10]) cylinder(d=8.5, h=40, center=true);

		rotate([90,90,0]) {
			translate([-10,16,-0]) cylinder(d=3.25, h=100, center=true);
			translate([-10,-16,0]) cylinder(d=3.25, h=100, center=true);
		}
	
		// camera mount holes
		translate([-12.5,-12,-5]) cylinder(d=3.25, h=15, $fn=36);
		translate([12.5,-12,-5]) cylinder(d=3.25, h=15, $fn=36);
		translate([-12.5,12,-5]) cylinder(d=3.25, h=15, $fn=36);
		translate([12.5,12,-5]) cylinder(d=3.25, h=15, $fn=36);	
		
		// cable clamp hole
		translate([-25,12,-5]) cylinder(d=3.25, h=15, $fn=36);
		translate([-25,-12,-5]) cylinder(d=3.25, h=15, $fn=36);
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