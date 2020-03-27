use <PiHole.scad>
use <Feet.scad>
use <clusterplate.scad>

heightz = 30;
length = 120;
width = 70;
slideh = 30;
board = "RPi4";


$fn=64;

module rpi4()
{
    depth = 6;
    difference()
    {
        union()
        {
            translate([0,0,0]) clusterplate(length,width,10,depth);
            //translate([0,0,18]) import("clusterplate_120-70-10-6.stl");
            translate([0,(width-piBoardDim(board)[1])/2,-4]) color("red") rotate([0,0,0]) piBoard(board, 0);
        }
        translate([0,(width-piBoardDim(board)[1])/2,-4]) piHoles(board, depth, false, depth);
    }
    //translate([0,0,18]) clusterplate(length,width,10,6);

    //translate([45,35,20]) color("red") rotate([0,0,180]) piBoard("RPi4",0);

    translate([10,-2,-18]) footssd(4);
    translate([87,-2,-18]) footssd(4);
    translate([10,width+2,-18]) rotate([0,0,180]) footssd(4);
    translate([87,width+2,-18]) rotate([0,0,180]) footssd(4);
    
    //translate([87,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    //translate([10,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    //translate([87,-1.5,14]) rotate([0,0,180]) connector(slideh);
    //translate([10,-1.5,14]) rotate([0,0,180]) connector(slideh);
}

translate([length/2,-width/2,0]) rotate([0,180,0]) rpi4();