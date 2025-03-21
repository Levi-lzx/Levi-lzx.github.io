    $fn = 100;
    /*Pastry*/
    translate([0, 0, 6.75]){
            
        /*Base*/
        cylinder(h = 1.5, r = 2, center = true);
            
        for(i = [0 : 30 : 360]){
            rotate([0, 0, i]){
                translate([1, 1, 0])
                cylinder(h = 1.5, r = 1, center = true);
            }
        }
            
        /*pattern*/
        difference(){  
        resize([4, 4, 0.8]){
            translate([0, 0, 1])
            cylinder(h = 1.5, r = 2, center = true);  
            for(i = [0 : 30 : 360]){
                rotate([0, 0, i]){
                    translate([1, 1, 1])
                    cylinder(h = 1.5, r = 1, center = true);
                }
            }
        }
        
        resize([3.5, 3.5, 0.9]){
            translate([0, 0, 1])
            cylinder(h = 1.5, r = 2, center = true);  
            for(i = [0 : 30 : 360]){
                rotate([0, 0, i]){
                    translate([1, 1, 1])
                    cylinder(h = 1.5, r = 1, center = true);
                }
            }
        }
        }
    }