use <PiHole_new.scad>
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
            translate([piBoardDim(board)[0]-piHoleLocations(board)[1][0],(width-piBoardDim(board)[1])/2,-1.5]) color("red") rotate([0,0,0]) piBoard_support(board, 0,width);
        }
        translate([piBoardDim(board)[0]-piHoleLocations(board)[1][0],(width-piBoardDim(board)[1])/2,3]) rotate([0,0,0]) piHoles(board, depth, false, depth);
        clusterplate_holes(length=120,width=70,thickness=6);
    }
    //translate([0,0,18]) clusterplate(length,width,10,6);

    //translate([45,35,20]) color("red") rotate([0,0,180]) piBoard("RPi4",0);

    translate([15,-0.2,0]) rotate([0,180,0]) footssd(4);
    translate([91,-0.2,0]) rotate([0,180,0])footssd(4);
    translate([15,width+0.2,0]) rotate([0,180,180]) footssd(4);
    translate([91,width+0.2,0]) rotate([0,180,180]) footssd(4);
    
    //translate([87,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    //translate([10,width+1.5,14]) rotate([0,0,0]) connector(slideh);
    //translate([87,-1.5,14]) rotate([0,0,180]) connector(slideh);
    //translate([10,-1.5,14]) rotate([0,0,180]) connector(slideh);
}


rpi4();
//translate([6,0,-8.5]) ssd();
//translate([length-5,1.5,-40]) connector_bolt();
