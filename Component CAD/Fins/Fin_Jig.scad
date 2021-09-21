difference()
{
    square(190, true);
    union(){
        circle(d=30.3);
    
        color("green")
        translate([15, -1.5, 0])
        rotate([0, 0, 0])
        square([62, 3]);
        
        color("green")
        translate([1.5, 15, 0])
        rotate([0, 0, 90])
        square([62, 3]);
        
        color("green")
        translate([-15, 1.5, 0])
        rotate([0, 0, 180])
        square([62, 3]);
        
        color("green")
        translate([-1.5, -15, 0])
        rotate([0, 0, -90])
        square([62, 3]);
    }
}
// fin length 61.5 mm
// fin width 3 mm
