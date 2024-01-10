/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Solenoid Mount
 *
 * This part attaches the solenoid to rail.
 *
 * Required hardware:
 * - 2 x M3 x 8mm bolts for rail mounting
 * - 2 x M3 t-nuts
 * - 2 x M3 x 6mm bolts for solenoid mounting
 *
 */
 
$fn = 36;
 
sm();
 
module sm() {
	
	difference() {
		
		translate([-50/2,-40/2,-5/2]) roundedcube(50,40,5,5);

		// solenoid mount holes
		translate([-7.5,5+5,-30]) cylinder(d=3.2, h=100);
		translate([7.5,-5+5,-30]) cylinder(d=3.2, h=100);

		translate([-7.5,5+5,-4.5+1]) cylinder(d=7, h=2);
		translate([7.5,-5+5,-4.5+1]) cylinder(d=7, h=2);

				
		// y axis t nut mount holes
		translate([20,-15,-30]) cylinder(d=3.2, h=100);
		translate([-20,-15,-30]) cylinder(d=3.2, h=100);

		translate([20,-15,2.5-1]) cylinder(d=7, h=100);
		translate([-20,-15,2.5-1]) cylinder(d=7, h=100);
		
		
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