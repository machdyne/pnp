/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Power Plug Connection Box
 *
 */
 
$fn = 36;

ppcb();

module ppcb() {
	
	difference() {
		minkowski() {
			union() {
				translate([0,0,20]) cube([35,50,35], center=true);
				cube([65,50,2.5], center=true);
			}
			sphere(2);
		}
		
		translate([0,3.5,20]) cube([35,50,35], center=true);
		translate([0,0,20]) rotate([90,0,0]) cylinder(d=11.25, h=100, center=true);
		
		translate([27.5,0,0]) cylinder(d=3.25, h=100, center=true);
		translate([-27.5,0,0]) cylinder(d=3.25, h=100, center=true);
	}
	
}