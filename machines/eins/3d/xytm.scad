/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * X-Y Axis Table Mount
 *
 */
 
$fn = 36;
 
xytm();
 
module xytm() {
	
	difference() {
		
		union() {
			
			roundedcube(60,60,5,10);
	
			color([0.7,0,0]) {
				translate([20,20,5]) cube([14,40,20]);
				translate([20,20,5]) cube([40,14,20]);
			}
			
		}
		
		// TODO: 4x flush mount holes down to the table
		
		rotate([0,90,0]) translate([-15,50,20]) cylinder(d=3.75, h=200, center=true);
		rotate([90,0,0]) translate([50,15,0]) cylinder(d=3.75, h=200, center=true);

		translate([10,10,0]) cylinder(d=5.5, h=200, center=true);
		translate([10,50,0]) cylinder(d=5.5, h=200, center=true);
		translate([50,10,0]) cylinder(d=5.5, h=200, center=true);
		translate([50,50,0]) cylinder(d=5.5, h=200, center=true);

		translate([10,10,10-2.5]) cylinder(d=9.5, h=10, center=true);
		translate([10,50,10-2.5]) cylinder(d=9.5, h=10, center=true);
		translate([50,10,10-2.5]) cylinder(d=9.5, h=10, center=true);
		translate([50,50,10-2.5]) cylinder(d=9.5, h=10, center=true);
	
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