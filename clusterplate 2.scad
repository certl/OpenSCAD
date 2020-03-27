//length = 120;
//width = 70;
//framewidth = 10;
//thickness = 6;
holesize = 3;
supportwidth = 3;

module clusterplate(length=120,width=70,framewidth=10,thickness=6)
union()
{
    //difference()
    //{
        //minkowski()
        //{
        //    cube([length,width,1]);
        //    cylinder(r=3,h=1);
        //}
        
        //translate([framewidth/2,framewidth/2,-thickness/2]) rotate([0,0,0]) color("blue") cube([length-framewidth,width-framewidth,thickness]);
        //translate([0,0,-0.5*thickness])
        //linear_extrude(height = thickness*2, center = true) 
        //{
        //    grate(length, width, holesize, supportwidth) polygon([[0,holesize],[2*holesize,0],[0,-holesize],[-2*holesize,0]]);
        //}
    //}
    difference()
    {
        minkowski()
        {
            cube([length,width,1]);
            cylinder(r=3,h=1);
        }
        translate([framewidth/2,framewidth/2,-thickness/2]) rotate([0,0,0]) cube([length-framewidth,width-framewidth,thickness]);
    }
}


module grate(length, width, holesize, supportwidth)
{
    frame = 0;
    countx = (length-2*frame)/(2*holesize+supportwidth);
    for(x = [0 : countx-1])
    {
        county = (width-2*frame)/(holesize);
        for(y = [0 : county-1])
        {
            if (y % 2 == 0)
            {
                translate([2*frame + (4*holesize+supportwidth)/2 + x*4*holesize+x*supportwidth,frame+1.5*y*holesize,0]) children();
            }
            else
            {
                translate([2*frame + x*4*holesize+x*supportwidth,frame+1.5*y*holesize,0]) children();
            }
        }
    }
}

clusterplate();