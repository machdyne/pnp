/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Mainboard Enclosure (currently it's just a stand that mounts on a rail)
 *
 */

$fn = 36;

mbe();

module mbe() {

//	translate([0,0,5]) color([0,1.0,0]) cube([160,100,2], center=true);
	
	difference() {
		
		union() {
			translate([-160/2,-100/2,0]) roundedcube(160,100,2,5);
			translate([0,0,-2]) cube([75,20,4], center=true);
		}
		
		translate([75,45,-5]) cylinder(d=3.25, h=10);
		translate([75,-45,-5]) cylinder(d=3.25, h=10);
		translate([-75,45,-5]) cylinder(d=3.25, h=10);
		translate([-75,-45,-5]) cylinder(d=3.25, h=10);
		
		translate([25,0,-25]) cylinder(d=3.25, h=100);
		translate([-25,0,-25]) cylinder(d=3.25, h=100);

		translate([25,0,3]) cylinder(d=6.5, h=10, center=true);
		translate([-25,0,3]) cylinder(d=6.5, h=10, center=true);
		
	}
	
}

// https://gist.github.com/tinkerology/ae257c5340a33ee2f149ff3ae97d9826
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