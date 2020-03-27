use <PiPoles.scad>
use <Feet.scad>
use <clusterplate.scad>

holedim = 4;
holedepth = 6;
slideh = 18;

module plate(length=150,width=70)
{
    translate([0,0,18])
    difference()
    {
        clusterplate(length,width,10,6);
        translate([149,15,-0.5]) rotate([0,0,0]) cylinder(d=holedim, h=holedepth);
        translate([149,5,-0.5]) rotate([0,0,0]) cylinder(d=holedim, h=holedepth);
        translate([149,width-15,-0.5]) rotate([0,0,0]) cylinder(d=holedim, h=holedepth);
        translate([149,width-5,-0.5]) rotate([0,0,0]) cylinder(d=holedim, h=holedepth);
    }

    translate([10,0,0]) footssd(4,slideh);
    translate([87,0,0]) footssd(4,slideh);
    translate([10,width,0]) rotate([0,0,180]) footssd(4,slideh);
    translate([87,width,0]) rotate([0,0,180]) footssd(4,slideh);
    translate([87,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    translate([10,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    translate([87,-1.5,14]) rotate([0,0,180]) connector(slideh);
    translate([10,-1.5,14]) rotate([0,0,180]) connector(slideh);
}

plate();