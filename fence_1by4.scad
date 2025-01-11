// assuming all in inches

picket_width=4;
picket_gap=3;
picket_height=4*12;
picket_depth=1;

fence_length=13*12;
fence_length=5*12;
fence_length=3*12;

cube([picket_width,picket_height,picket_depth]);


number_pickets=floor(fence_length/(picket_width+picket_gap))+1;

echo(number_pickets);


actual_fence_length=(number_pickets-1)*(picket_width+picket_gap)+picket_width;

echo(actual_fence_length/12);

for ( j = [0:1:number_pickets-1]) {
    translate([(picket_gap+picket_width)*j,0,0])
    cube([picket_width,picket_height,picket_depth]);
    
    
}

translate([0,0,picket_depth*1.1]) {
//lower railing
    color([1,0,0])
cube([actual_fence_length,picket_width,picket_depth]);

//upper railing
translate([0,picket_height-picket_width,0])
    color([1,0,0])
cube([actual_fence_length,picket_width,picket_depth]);
    
}