$fa=12;
$fs=1;
$fn=50;

module dessert(){
//核
color([0.6,0.3,0.2])
translate([0,0,0.1])
scale([0.7,0.7,0.7]){
    difference(){
        translate([0,0,5])
        sphere(r=10);
        
        translate([0,0,-10])
        cube(20,center=true);
    }
}
translate([0,0,10.5])
sphere(r=0.8);



module dot(){
sphere(r=0.5);
}

r=3;
n=8;
step=360/n;

for(i=[0:step:365]){
    angle=i;
    dx=r*cos(angle);
    dy=r*sin(angle);
    translate([dx,dy,9.6])
    dot();
}
}


translate([-12.5,-12.5,0])
for (dx=[0,25]){
    for (dy=[0,25]){
        translate([dx,dy,0])   
        dessert();
    }
}