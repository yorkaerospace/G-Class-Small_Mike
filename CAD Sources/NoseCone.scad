use <src/NoseCones.scad>


nose_dia = 60;
nose_len = 150;
thick = 2;


power(nose_len, nose_dia, nose_dia-(2*thick), 0.7, 20, nose_dia-(2*thick), (nose_dia-(2*thick))-(2*thick), step=0.1);
    
translate([100, 0, 0])

difference()
{
    parabolic(nose_len, nose_dia, nose_dia-(2*thick), 0.5, 20, nose_dia-(2*thick), (nose_dia-(2*thick))-(2*thick), step=0.1);
    //translate([0, 0, -1])
    //cube(150);
}