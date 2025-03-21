$fa = 1;
$fs = 0.4;

//translate
cylinder(h= 10.1999,r= 5.499,center=true);

petals = 8;
radius = 30;
thickness = 9.9;
height = 10;
layer_count = 1;
hole_radius = 5.5;



module petal() {
rotate([0, 0, 45.001]) {
resize([radius * 2, radius, thickness]) {
cylinder(h=thickness, r=radius, center=true);
}
}
}

module jujube_flower_pastry() {
difference() {
for (i = [0:layer_count - 1]) {
translate([0, 0, i * 0.001]) { 
for (j = [0:petals - 1]) {
rotate([0, 0, j * (360 / petals)]) {
petal();
}
}
}
}
cylinder(h=height, r=hole_radius, center=true);
}
}

jujube_flower_pastry();