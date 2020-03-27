use <PiPoles.scad>
use <Feet.scad>
use <clusterplate.scad>

heightz = 30;
length = 120;
width = 70;
slideh = 30;


$fn=50;

module opi4()
{
    translate([0,0,18]) clusterplate(length,width,10,6);
    //minkowski()
    //{
    //    cube([length,width,1]);
    //    cylinder(r=3,h=1);
    //}

    translate([45,35,20]) color("red") rotate([0,0,180]) piBoard("OPi4", false);

    translate([10,0,0]) footssd(4);
    translate([87,0,0]) footssd(4);
    translate([10,width,0]) rotate([0,0,180]) footssd(4);
    translate([87,width,0]) rotate([0,0,180]) footssd(4);
    translate([87,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    translate([10,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    translate([87,-1.5,14]) rotate([0,0,180]) connector(slideh);
    translate([10,-1.5,14]) rotate([0,0,180]) connector(slideh);
}

opi4();