$fs=1;
$fa=0.4;

out_dia = 49.75;
out_rad = out_dia / 2;

inner_dia = 30;
inner_rad = inner_dia / 2;

thickness = 2;

offset = 0.1;

module centering_ring() {
    difference() {
    cylinder(h=thickness, r=out_rad, center=true);
    translate([0,0,-offset/2])
        cylinder(h=thickness+offset*2, r=inner_rad, center=true);
    }
}

centering_ring();