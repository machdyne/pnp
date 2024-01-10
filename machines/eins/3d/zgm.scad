/*
 * Machdyne PNP
 * Copyright (c) 2023 Lone Dynamics Corporation. All rights reserved.
 *
 * Z Gantry Mount
 *
 * This part (zgm) mounts the Z Gantry to the X Axis.
 *
 * Sub-part "zgmfp" mounts zam to zgm.
 *
 * Sub-part "zam", when combined with clamps (gmbc), joins the two ends of the belt.
 *
 * Required hardware:
 *
 * 4 x M3 x 12mm button head bolts (faceplace mounts)
 *
 *
 */
 
$fn = 36;

translate([10,0,0]) zam();
zgm();
zgmfp();
zgmfpp();

module zam() {
	
	// linear guide rail reference
	// translate([35,-30,5]) color([1.0,0,0]) cube([6.5,9,100], center=true);

	// motor reference
	// translate([60,-30,0]) color([1.0,0,0]) cube([28,28,28], center=true);

	
	// belt clip mount
	difference() {
		
		translate([55,-2,0]) cube([40,24.5,32], center=true);
		translate([55,-2,4]) cube([35,20,65], center=true);
		
		// belt window
		translate([50,0,0]) cube([15,24,10], center=true);
	
		// belt clip holes
		rotate([90,0,0]) {
			translate([50-6,10,0]) cylinder(d=3.5, h=22, center=true);
			translate([50+6,10,0]) cylinder(d=3.5, h=22, center=true);
			translate([50-6,-10,0]) cylinder(d=3.5, h=22, center=true);
			translate([50+6,-10,0]) cylinder(d=3.5, h=22, center=true);
		}
		
		rotate([90,0,90])
			translate([0,0,74])
				linear_extrude(1.5)
					text("///ACHDYNE", size=2.5, halign="center",
						font="Ubuntu:style=Bold");

	}
	
	// c1 motor holder
	difference() {
		translate([55,-30,-5]) cube([40,32,42], center=true);
		translate([70,-30,4]) cube([50,28.5,50], center=true);

		// motor shaft hole
		translate([48+(23/2),-30,0]) cylinder(d=25, h=100, center=true);
		
		// motor mount holes
		translate([48,-30-(23/2),0]) cylinder(d=3.5, h=100, center=true);
		translate([48,-30+(23/2),0]) cylinder(d=3.5, h=100, center=true);
		translate([48+23,-30-(23/2),0]) cylinder(d=3.5, h=100, center=true);
		translate([48+23,-30+(23/2),0]) cylinder(d=3.5, h=100, center=true);
		
		// linear guide rail block mount
		rotate([0,90,0]) {
			translate([-2+8,-30+7.5,50]) cylinder(d=3.5, h=100, center=true);
			translate([-2-8,-30+7.5,50]) cylinder(d=3.5, h=100, center=true);
			translate([-2+8,-30-7.5,50]) cylinder(d=3.5, h=100, center=true);
			translate([-2-8,-30-7.5,50]) cylinder(d=3.5, h=100, center=true);
			
			translate([-2+8,-30+7.5,45]) cylinder(d=6, h=5, center=true);
			translate([-2-8,-30+7.5,45]) cylinder(d=6, h=5, center=true);
			translate([-2+8,-30-7.5,45]) cylinder(d=6, h=5, center=true);
			translate([-2-8,-30-7.5,45]) cylinder(d=6, h=5, center=true);			
		}

	}
	
	// c2 motor placeholder
	difference() {
		translate([55,27.5,0]) cube([40,35,32], center=true);
		translate([55,20,4]) cube([35,45,60], center=true);
	
		// linear guide rail block mount
		rotate([0,90,0]) {
			translate([-2+8,30+7.5,50]) cylinder(d=3.5, h=100, center=true);
			translate([-2-8,30+7.5,50]) cylinder(d=3.5, h=100, center=true);
			translate([-2+8,30-7.5,50]) cylinder(d=3.5, h=100, center=true);
			translate([-2-8,30-7.5,50]) cylinder(d=3.5, h=100, center=true);
			// tool holes
			translate([-2+8,30+7.5,75]) cylinder(d=8, h=10, center=true);
			translate([-2-8,30+7.5,75]) cylinder(d=8, h=10, center=true);
			translate([-2+8,30-7.5,75]) cylinder(d=8, h=10, center=true);
			translate([-2-8,30-7.5,75]) cylinder(d=8, h=10, center=true);
		}

		// belt clip tool holes
		rotate([90,0,0]) {
			translate([50-6,10,0]) cylinder(d=8, h=100, center=true);
			translate([50+6,10,0]) cylinder(d=8, h=100, center=true);
			translate([50-6,-10,0]) cylinder(d=8, h=100, center=true);
			translate([50+6,-10,0]) cylinder(d=8, h=100, center=true);
		}

	}
	
}

// faceplate for plotter
module zgmfpp() {

	difference() {
		
		union() {
			translate([30,0,14]) cube([2,42,20], center=true);
			translate([37.5,0,14]) cube([15,15,20], center=true);
		}
		
		// pen mount
		translate([37.5,0,0]) cylinder(d=12, h=100, center=true);
		
		// pen bolt
		rotate([0,90,0]) {
			translate([-14,0,45]) cylinder(d=3, h=10, center=true);
		}
		
		// faceplate mount holes
		rotate([0,90,0]) {
			translate([-14-6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14-6,-16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,-16,0]) cylinder(d=3.25, h=100, center=true);
		}
	}

}

// faceplate for PNP
module zgmfp() {
	
	// rail reference
	//translate([35,-27.5,5])color([1.0,0,0]) cube([6.5,9,100], center=true);

// unrounded faceplate
//	color([1.0,0,0]) translate([30,0,17.5]) cube([4,72,140], center=true);	
	
	difference() {
	
		union() {
			rotate([90,0,90]) translate([-72/2,-140/2,28]) roundedcube(72,140,4,5);
			// pulley shaft guide
			rotate([0,90,0]) translate([62.5,0,41.25]) cylinder(d=15, h=18.5, center=true);
			// limit switch mount
			translate([35,-32,45]) cube([12,8,20], center=true);
		}
		
		// high-res down-facing camera mount holes (dfcm)
		rotate([0,90,0]) {
			translate([60-25,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([60-25,-16,0]) cylinder(d=3.25, h=100, center=true);
			translate([60-25,16,32]) cylinder(d=6, h=5, center=true);
			translate([60-25,-16,32]) cylinder(d=6, h=5, center=true);
		}
				
		// limit switch mount hole
		rotate([90,0,0]) {
			translate([36.5,37.5,0]) cylinder(d=2.5, h=100, center=true);
			translate([36.5,42.5,0]) cylinder(d=2.5, h=100, center=true);
			translate([36.5,47.5,0]) cylinder(d=2.5, h=100, center=true);
			translate([36.5,52.5,0]) cylinder(d=2.5, h=100, center=true);
		}
		
		// z axis shaft hole
		rotate([0,90,0]) {
			translate([-32-15.5,0,0]) cylinder(d=27.5, h=100, center=true);
		}
		
		// z motor mount holes
		rotate([0,90,0]) {
			translate([-32-(15.5*2),15.5,0]) cylinder(d=3.25, h=100, center=true);
			translate([-32-(15.5*2),-15.5,0]) cylinder(d=3.25, h=100, center=true);
			translate([-32,15.5,0]) cylinder(d=3.25, h=100, center=true);
			translate([-32,-15.5,0]) cylinder(d=3.25, h=100, center=true);
		}

		// faceplate mount holes
		rotate([0,90,0]) {
			translate([-14-6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14-6,-16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,-16,0]) cylinder(d=3.25, h=100, center=true);
		}

		// linear rail mount holes
		rotate([0,90,0]) {
			// left rail
			translate([55,-30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-20,-30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-40,-30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-60,-30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-80,-30,0]) cylinder(d=3.25, h=100, center=true);
			// right rail
			translate([55,30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-20,30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-40,30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-60,30,0]) cylinder(d=3.25, h=100, center=true);
			translate([55-80,30,0]) cylinder(d=3.25, h=100, center=true);
		}

		// pulley shaft hole
		rotate([0,90,0]) {
			translate([62.5,0,0]) cylinder(d=5.25, h=200, center=true);
//			translate([62.5,0,33]) cylinder(d=9.5, h=10, center=true);
		}

	}

}
 
module zgm() {
	
	// approx. rail reference
	translate([0,0,-15]) color([1.0,0,0]) cube([20,100,20], center=true);

	difference() {

		union() {
			translate([0,0,12.5]) cube([42,42,27.5], center=true);			
		}

		translate([0,0,14]) cube([30,50,20], center=true);
		translate([-20,0,14]) cube([20,20,20], center=true);	
		
		// x axis mount holes
		rotate([0,90,90]) {
			translate([-35,-10,20]) cylinder(d=3.5, h=100, center=true);
			translate([-35,10,20]) cylinder(d=3.5, h=100, center=true);
			translate([-35,-10,23]) cylinder(d=6.25, h=2.25, center=true);
			translate([-35,10,23]) cylinder(d=6.25, h=2.25, center=true);
			translate([-35,-10,-23]) cylinder(d=6.25, h=2.25, center=true);
			translate([-35,10,-23]) cylinder(d=6.25, h=2.25, center=true);
		}		
		
		// tool holes
		translate([10,10,60]) cylinder(d=8, h=100, center=true);
		translate([10,-10,60]) cylinder(d=8, h=100, center=true);
		translate([-10,10,60]) cylinder(d=8, h=100, center=true);
		translate([-10,-10,60]) cylinder(d=8, h=100, center=true);
		
		// mounting bolt holes
		translate([10,10,20]) cylinder(d=3.25, h=100, center=true);
		translate([10,-10,20]) cylinder(d=3.25, h=100, center=true);
		translate([-10,10,20]) cylinder(d=3.25, h=100, center=true);
		translate([-10,-10,20]) cylinder(d=3.25, h=100, center=true);
		
		// countersink holes
		translate([10,10,48.75+2]) cylinder(d=6.25, h=100, center=true);
		translate([10,-10,48.75+2]) cylinder(d=6.25, h=100, center=true);
		translate([-10,10,48.75+2]) cylinder(d=6.25, h=100, center=true);
		translate([-10,-10,48.75+2]) cylinder(d=6.25, h=100, center=true);

		// belt clamp holes / faceplace mount holes
		rotate([0,90,0]) {
			translate([-14-6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14-6,-16,0]) cylinder(d=3.25, h=100, center=true);
			translate([-14+6,-16,0]) cylinder(d=3.25, h=100, center=true);
		}
	
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
