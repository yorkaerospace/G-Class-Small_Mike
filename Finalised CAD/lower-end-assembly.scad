// planning out the lower end of the APR21 rocket

module main_tube() {
    height = 400;
    o_dia = 54;
    i_dia = 50;
    difference() {
        cylinder(h=height,r=o_dia/2);
        translate([0,0,-0.5])
            cylinder(h=height+1,r=i_dia/2);
    }
}

module motor_casing() {
    motor_tube();
    motor_closure();
}

module motor_tube() {
    height = 142.24;
    dia = 28.57;
    cylinder(h=height,r=dia/2);
}

module motor_closure() {
    height = 6.35;
    dia = 31.75;
    translate([0,0,-height])
        cylinder(h=height,r=dia/2);
}

main_tube();
motor_casing();