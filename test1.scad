include <NopSCADlib/core.scad>

use <NopSCADlib/fan.scad>
use <fan_holder_v2.scad>
use <RPi4-cluster-frame.scad>
use <OPi4-cluster-frame.scad>
use <Feet.scad>
use <Fan-cluster-frame.scad>
use <fanframe.scad>


 
height = 42;
hoffset = 13;
length = 120;
width = 70;
fansize = 120;
//translate([0,0,0]) plate(150,70);
translate([0,0,hoffset]) rpi4();
translate([0,0,hoffset + height]) rpi4();
//translate([0,0,hoffset + 2*height]) plate(150,70);
translate([0,0,hoffset + 2*height]) opi4();
translate([0,0,hoffset + 3*height]) opi4();

translate([149,20,hoffset + 2*height + 20]) rotate([0,0,180]) boltmount(8,4,40);
translate([149,width-20,hoffset + 2*height + 20]) rotate([0,0,0]) boltmount(8,4,40);

translate([149,20,hoffset]) rotate([0,0,180]) boltmount(8,4,40);
translate([149,width-20,hoffset]) rotate([0,0,0]) boltmount(8,4,40);

translate([162,95,0]) rotate([0,0,180]) fanholder(fansize,4);
translate([162,95,fansize]) rotate([0,0,180]) fanholder(fansize,4);

translate([2,1.5,hoffset+2]) rotate() connector_bolt(40);
translate([length-5,1.5,hoffset+2]) rotate() connector_bolt(40);
translate([2,width-1.5,hoffset+2]) rotate() connector_bolt(40);
translate([length-5,width-1.5,hoffset+2]) rotate() connector_bolt(40);

translate([2,1.5,hoffset+2+height]) rotate() connector_bolt(40);
translate([length-5,1.5,hoffset+2+height]) rotate() connector_bolt(40);
translate([2,width-1.5,hoffset+2+height]) rotate() connector_bolt(40);
translate([length-5,width-1.5,hoffset+2+height]) rotate() connector_bolt(40);

translate([2,1.5,hoffset+2+2*height]) rotate() connector_bolt(40);
translate([length-5,1.5,hoffset+2+2*height]) rotate() connector_bolt(40);
translate([2,width-1.5,hoffset+2+2*height]) rotate() connector_bolt(40);
translate([length-5,width-1.5,hoffset+2+2*height]) rotate() connector_bolt(40);

