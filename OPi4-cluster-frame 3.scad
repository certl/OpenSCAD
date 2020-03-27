use <PiHole.scad>
use <Feet.scad>
use <clusterplate.scad>

heightz = 30;
length = 120;
width = 70;
slideh = 30;
board = "OPi4";


$fn=64;

module opi4()
{
    depth = 6;
    difference()
    {
        union()
        {
            translate([0,0,0]) clusterplate(length,width,10,depth);
            //translate([0,0,18]) import("clusterplate_120-70-10-6.stl");
            translate([piBoardDim(board)[0]-piHoleLocations(board)[1][0],(width-piBoardDim(board)[1])/2,-1.5]) color("red") rotate([0,0,0]) piBoard(board, 0,width);
        }
        translate([piBoardDim(board)[0]-piHoleLocations(board)[1][0],(width-piBoardDim(board)[1])/2,-1.5]) rotate([0,0,0]) piHoles(board, depth, false, depth);
    }
    //translate([0,0,18]) clusterplate(length,width,10,6);
    //translate([0,6,14]) color("red") rotate([0,0,0]) piBoard("OPi4", 0);
    //translate([0,6,14]) color("red") rotate([0,0,0]) piBoard("OPi4", 0);

    translate([10,-2,-18]) footssd(4);
    translate([87,-2,-18]) footssd(4);
    translate([10,width+2,-18]) rotate([0,0,180]) footssd(4);
    translate([87,width+2,-18]) rotate([0,0,180]) footssd(4);
    //translate([87,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    //translate([10,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    //translate([87,-1.5,14]) rotate([0,0,180]) connector(slideh);
    //translate([10,-1.5,14]) rotate([0,0,180]) connector(slideh);
}

module ssd()
{
    translate([0,-35,5]) rotate([0,0,0]) cube([100,70,7]);
}


translate([length/2,-width/2,0]) rotate([0,180,0]) opi4();
ssd();