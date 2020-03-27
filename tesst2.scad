use <PiPoles.scad>
use <Feet.scad>

heightz = 30;
length = 120;
width = 70;


$fn=50;



translate([0,0,20])
minkowski()
{
    cube([length,width,1]);
    cylinder(r=3,h=1);
}

translate([45,35,22]) color("red") piBoard("OPi4");
translate([45,35,33]) color("red") rotate([0,0,180]) cube([90,58,20],center=true);

translate([10,0,2]) footssd(4,45);
translate([87,0,2]) footssd(4,45);
translate([10,width,2]) rotate([0,0,180]) footssd(4,45);
translate([87,width,2]) rotate([0,0,180]) footssd(4,45);

translate([0,0,58])
minkowski()
{
    cube([length,width,1]);
    cylinder(r=3,h=1);
}

translate([45,35,60]) color("red") rotate([0,0,180]) piBoard("RPi4");

translate([10,0,40]) footssd(4,45);
translate([87,0,40]) footssd(4,45);
translate([10,width,40]) rotate([0,0,180]) footssd(4,45);
translate([87,width,40]) rotate([0,0,180]) footssd(4,45);
