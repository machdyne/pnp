/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * PCB Holder
 *
 */
 
$fn = 36;

pcbh();

module pcbh() {
	
	difference() {
		
		union() {
			translate([-10,0,0]) cube([30,105,2]);
			translate([-10,-20,0]) cube([115,30,2]);
		}
	
		translate([5,95,0]) cube([10,3.25,10], center=true);
		//translate([5,95,0]) cylinder(d=3.25, h=10, center=true);
		
		translate([95,-5,0]) cube([3.25,10,10], center=true);
		//translate([95,-5,0]) cylinder(d=3.25, h=10, center=true);
	
		translate([5,-5,0]) cylinder(d=3.25, h=10, center=true);
			
			
	}
	
}