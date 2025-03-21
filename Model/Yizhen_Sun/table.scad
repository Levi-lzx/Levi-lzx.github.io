$fn = 100;
/*Table*/
    /*Top*/
    translate([0, 0, 0]){
        minkowski(){
            cylinder(h = 0.5, r = 10, center = true);
            sphere(r = 0.5);
        }
    }
    
    translate([0, 0, -1])
    cylinder(h = 0.5, r = 10.25, center = true);
    
    translate([0, 0, -1]){
        rotate_extrude(angle = 360, convexity = 2){
            translate([10.25, 0, 0])
            circle(r = 0.1);
        }
    }
    
    translate([0, 0, 1]){
        minkowski(){
            cylinder(h = 0.1, r = 1, center = true);
            sphere(r = 0.2);
        }
    }
    
    /*Bottom*/
    translate([0, 0, -3.5]){
        difference(){
            minkowski(){
                cube([7, 7, 8], center = true);
                sphere(0.1);
            }
        translate([0, 5.5, -1])
        cube([4, 4, 4], center = true);
        }
        
        translate([0, 1.625, -1])
        cube([3.5, 4, 3.5], center = true);
        
        translate([0, 0, -6.5]){
            difference(){
                minkowski(){
                    cube([10, 10, 4], center = true);
                    sphere(0.5);
                }
                
                translate([0, 0, -2])
                rotate([0, 90, 0])
                cylinder(h = 11, r = 3, center = true);
            
                translate([0, 0, -2])
                rotate([0, 90, 90])
                cylinder(h = 11, r = 3, center = true);
            }
        }
    }
        