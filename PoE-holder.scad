framewidth = 5;
holeheight = 25;
holewidth = 30;
holenumber = 4;
holerad = 2;
plateheight = (holenumber+1)*holeheight;
platewidth = holewidth + 2*framewidth;
platethi = 4;
minkowskirad = 3;
minkowskithi = 1;
translate([-framewidth-holewidth/2,-platethi/2,minkowskirad])
difference()
{
    minkowski()
    {
        baseplate();
    }
    minkowski()
    {
        translate([framewidth+holerad/2,-2,framewidth+minkowskirad/2]) cube([holewidth-holerad,platethi+3,holeheight-holerad]);
        rotate([90,0,0]) cylinder(r=holerad,h=1);
    }
    minkowski()
    {
        translate([framewidth+holerad/2,-2,framewidth*2+holeheight+minkowskirad/2]) cube([holewidth-holerad,platethi+3,holeheight-holerad]);
        rotate([90,0,0]) cylinder(r=holerad,h=1);
    }
    minkowski()
    {
        translate([framewidth+holerad/2,-2,framewidth*3+holeheight*2+minkowskirad/2]) cube([holewidth-holerad,platethi+3,holeheight-holerad]);
        rotate([90,0,0]) cylinder(r=holerad,h=1);
    }
    minkowski()
    {
        translate([framewidth+holerad/2,-2,framewidth*4+holeheight*3+minkowskirad/2]) cube([holewidth-holerad,platethi+3,holeheight-holerad]);
        rotate([90,0,0]) cylinder(r=holerad,h=1);
    }  
}

module baseplate()
{
    hull()
    {
        minkowski()
        {
            cube([platewidth, platethi, plateheight]);
            rotate([90,0,0]) cylinder(r=minkowskirad,h=1);
        }
        translate([-5,platethi,0]) rotate([90,0,0]) cylinder(r=10, h=platethi+minkowskithi);
        translate([holewidth+minkowskirad+5+framewidth,platethi,0]) rotate([90,0,0]) cylinder(r=10, h=platethi+minkowskithi);
    }
}
