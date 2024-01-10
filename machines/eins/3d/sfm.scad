/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Strip Feeder (Manual)
 *
 * These mount to the side of the rail, the tape must be peeled back manually.
 *
 */

$fn = 36;

tape_pitch = 4;

feeder_length = 165;
feeder_height = 6;
tape_width = 8.1;
wall = 1.9;

g1h = 19.5;
g2h = 14.25;

sfg1_offset = -5.5;
sfg2_offset = -20;

sfm();
//sfmf();

module sfm() {
	
	difference() {
		
		union() {
			
			difference() {
		
				union() {
					cube([feeder_length,tape_width+wall,feeder_height], center=true);
					translate([feeder_length/2,0,9]) cube([4,tape_width+wall,24], center=true);
					translate([feeder_length/2-8,0,2]) cube([20,tape_width+wall,feeder_height+4], center=true);
				}
				
				translate([-25,0,1]) cube([180,tape_width-1,6], center=true);
				translate([100,0,0.25]) cube([80,tape_width-1,4.5], center=true);
			
				translate([feeder_length/2-6,0,0]) cube([34,tape_width,feeder_height+6], center=true);
			}
		
			
		}

		// tape entry
		translate([65,0,-1]) cube([40,tape_width,5], center=true);
		
		// mount hole (note: 2020 rail is raised 5.5mm from table surface)
		rotate([0,90,0]) translate([(feeder_height/2)-15.5,0,0]) cylinder(d=3.3, h=2000, center=true);

		// tape foot mount hole can be used with a M3 bolt + foot (sfmf) to press the tape against the table
		translate([75,0,-10]) cylinder(d=3.0, h=50);

		// tape guide
		translate([-15,0,1.5]) cube([150,tape_width,1], center=true);
	}
		
}

module sfmf() {
	difference() {
		minkowski() {
			color([0,0.5,0.5]) translate([80,0,0]) cube([3.5,5,1.5], center=true);
			sphere(0.25);
		}
		color([0,0.5,0.5]) translate([80,0,0]) cylinder(d=3, h=1);
	}
}
