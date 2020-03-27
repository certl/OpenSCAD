use <fan_holder_v2.scad>

$fn=64;

fansize = 120;
module fanholder(fansize = 120,thickness = 4)
{
    radiuso = 5;
    radiusi = 2;
    translate([0,0,fansize]) rotate([0,90,0]) fan_mount(fansize,thickness);
    
    translate([radiuso+thickness,thickness,0]) rotate([0,0,0]) langloch(fansize,4,radiuso,radiusi);
    translate([radiuso+thickness,fansize,0]) rotate([0,0,0]) langloch(fansize,4,radiuso,radiusi);
}

module langloch(length,thickness,radiuso,radiusi)
{
    difference()
    {
        hull()
        {
            #translate([0,0,radiuso]) rotate([90,0,0]) cylinder(r=radiuso,h=thickness);
            #translate([0,0,length-radiuso]) rotate([90,0,0]) cylinder(r=radiuso,h=thickness);
            #translate([thickness,0,radiuso]) rotate([90,0,0]) cylinder(r=radiuso,h=thickness);
            #translate([thickness,0,length-radiuso]) rotate([90,0,0]) cylinder(r=radiuso,h=thickness);
        }
        hull()
        {
            #translate([thickness,0.5,radiuso]) rotate([90,0,0]) cylinder(r=radiusi,h=thickness+1);
            #translate([thickness,0.5,length/2-7.5-radiuso]) rotate([90,0,0]) cylinder(r=radiusi,h=thickness+1);
        }
        hull()
        {
            #translate([thickness,0.5,length/2+7.5+radiuso]) rotate([90,0,0]) cylinder(r=radiusi,h=thickness+1);
            #translate([thickness,0.5,length-radiuso]) rotate([90,0,0]) cylinder(r=radiusi,h=thickness+1);
        }
    }
}

module fan_frame_connector()
{
    length = 20;
    width = 5;
    radius = 2.5;
    difference()
    {
        minkowski()
        {
            cube([length,width,1]);
            cylinder(r=radius,h=3);
        }
        translate([radius,radius,-0.1]) cylinder(d=3,h=width);
        translate([length-radius,radius,-0.1]) cylinder(d=3,h=width);
//        translate([25,radius,-0.1]) cylinder(d=3,h=width);
//        translate([35,radius,-0.1]) cylinder(d=3,h=width);
    }
}

//fanholder(120,4);
fan_frame_connector();
