$fa=12;
$fs=1;
$fn=50;

//盒子
translate([0,0,4.9])
difference(){
cube([50,50,10],center=true);
translate([0,0,2])   
cube([48,48,10],center=true);
}

module curbe(){
translate([0,0,0.5])
difference(){
cube([51,51,1],center=true);
cube([50,50,2],center=true);
}
}

for(dz=[0,2.5,5])
    translate([0,0,dz])
    curbe();