// fin guide for placing fins on inner tube

$fa = 1;
$fs = 0.4;

inner_tube_dia = 29.575;
guide_outer_dia = 35;

inner_tube_rad = inner_tube_dia / 2;
guide_outer_rad = guide_outer_dia / 2;

fin_thickness = 3;
fin_guide_width = 5;
fin_guide_length = 30;

guide_thickness = 5;

module center_ring() {
    difference() {
        cylinder(h=guide_thickness, r=guide_outer_rad, center=true);
        translate([0,0,-0.05])
            cylinder(h=guide_thickness+0.2, r=inner_tube_rad, center=true);
    }
}

module extensions(angle=0) {
    rotate([0,0,angle]) {
        translate([guide_outer_rad-2,fin_thickness/2,-guide_thickness/2])
            cube([fin_guide_length, fin_guide_width, guide_thickness]);
        translate([guide_outer_rad-2,-fin_thickness/2-fin_guide_width,-guide_thickness/2])
            cube([fin_guide_length, fin_guide_width, guide_thickness]);
    }
}
        
        

union() {
    center_ring();
    extensions(0);
    extensions(90);
    extensions(180);
    extensions(270);
}