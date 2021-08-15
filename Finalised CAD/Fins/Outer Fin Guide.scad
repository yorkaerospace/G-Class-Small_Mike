// outer fin guide

$fa = 1;
$fs = 0.4;

body_tube_dia = 54;
body_tube_rad = body_tube_dia / 2;

guide_thickness = 5;

fin_width = 3;

guide_height = 10;

pencil_zone = 5;

module main_ring() {
    difference() {
        cylinder(h=guide_height, r=body_tube_rad+guide_thickness, center=true);
        translate([0,0,-0.05])
            cylinder(h=guide_height+0.2, r=body_tube_rad, center=true);
    }
}

module fin_gaps(angle=0) {
    rotate([0,0,angle]) {
        translate([body_tube_rad-1, -fin_width/2, -guide_height/2-0.1])
            cube([guide_thickness+2, fin_width, pencil_zone+0.1]);
    }
}

difference() {
    main_ring();
    fin_gaps(0);
    fin_gaps(90);
    fin_gaps(180);
    fin_gaps(270);
}
