$fa=12;
$fs=1;
$fn=50;

module dessert(){
//外皮
difference(){
difference(){

    difference(){
        translate([0,0,5])
        sphere(r=10);
        
        translate([0,0,-10])
        cube(20,center=true);
    }
    
       
    scale([1.1,1.1,1.1]){
        difference(){
        
                difference(){
                    translate([0,0,5])
                    sphere(r=10);
                    
                    translate([0,0,-10])
                    cube(20,center=true);
                }
                
                
                translate([0,15,0])
                rotate([-20,0,0])
                cube([30,30,60],center=true);
                
                
                translate([0,-15,0])
                rotate([20,0,0])
                cube([30,30,60],center=true);
            }   
            
            rotate([0,0,90]){
                difference(){
                
                    difference(){
                            translate([0,0,5])
                            sphere(r=10);
                            
                            translate([0,0,-10])
                            cube(20,center=true);
                    }
                    
                    
                    translate([0,15,0])
                    rotate([-20,0,0])
                    cube([30,30,60],center=true);
                    
                    
                    translate([0,-15,0])
                    rotate([20,0,0])
                    cube([30,30,60],center=true);
            }   
        }
    }

}
}
}
translate([-12.5,-12.5,0])
for (dx=[0,25]){
    for (dy=[0,25]){
        translate([dx,dy,0])   
        dessert();
    }
}