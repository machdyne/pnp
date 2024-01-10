/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Tray Feeder
 *
 */

part_x = 10 + 0.0;
part_y = 10 + 0.0;

gap = 1.0;
rows = 4;
cols = 4;

tf();

module tf() {

	difference() {
		
		cube([cols*(part_x+gap)+gap,rows*(part_y+gap)+gap,2]);
		
		for (y = [0:rows-1]) {
			for (x = [0:cols-1]) {
				translate([gap+x*(part_x+gap),gap+y*(part_y+gap),1]) cube([part_x,part_y,2]);
			}
		}
		
	}
	
}