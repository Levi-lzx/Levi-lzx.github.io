        $fn = 100;
    translate([0, 0, 6.75]){
        /*Character*/
        translate([0, 0.05, 0]){
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([0.85, 0.2, 0.75]){
                rotate([0, 0, 0]){
                    minkowski(){
                        cube([0.1, 0.7, 0.05]);
                        cylinder(h = 0.05, r = 0.05, center = true);
                    }
                }
            }
        }
        
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([0.45, 0.1, 0.75]){
                rotate([0, 0, 0]){
                    minkowski(){
                        cube([0.1, 0.9, 0.05]);
                        cylinder(h = 0.05, r = 0.05, center = true);
                    }
                }
            }
        }
        
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([0.45, 0.5, 0.75]){
                rotate([0, 0, 90]){
                    minkowski(){
                        cube([0.1, 1.4, 0.05]);
                        cylinder(h = 0.05, r = 0.05, center = true);
                    }
                }
            }
        }
        
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([0.25, 0.8, 0.75]){
                rotate([0, 0, 90]){
                    minkowski(){
                        cube([0.1, 1.1, 0.05]);
                        cylinder(h = 0.05, r = 0.05, center = true);
                    }
                }
            }
        }
        
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([0.25, 0.2, 0.75]){
                rotate([0, 0, 90]){
                    minkowski(){
                        cube([0.1, 1.1, 0.05]);
                        cylinder(h = 0.05, r = 0.05, center = true);
                    }
                }
            }
        }
        
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([0.85, -1.1, 0.75]){
                rotate([0, 0, 0]){
                    minkowski(){
                        cube([0.1, 1, 0.05]);
                        cylinder(h = 0.05, r = 0.05, center = true);
                    }
                }
            }
        }
        
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([0.25, -1.05, 0.75]){
                rotate([0, 0, 0]){
                    difference(){
                        minkowski(){
                            cube([0.4, 0.9, 0.05]);
                            cylinder(h = 0.05, r = 0.05, center = true);
                        }
                        
                        translate([0.165, 0.195, -0.1])
                        cube([0.1, 0.5, 1]);
                    }
                }
            }
        }
        
        color( c = [252 / 255, 52 / 255, 3 / 255], alpha = 1.0 ){
            translate([-0.95, -1.2, 0.75]){
                rotate([0, 0, 0]){
                    difference(){
                        minkowski(){
                            cube([1, 1.2, 0.05]);
                            cylinder(h = 0.05, r = 0.05, center = true);
                        }
                        
                        translate([0.32, 0.26, -0.1])
                        cube([0.12, 0.17, 1]);
                        
                        translate([0.62, 0.26, -0.1])
                        cube([0.12, 0.17, 1]);
                        
                        translate([0.32, 0.75, -0.1])
                        cube([0.12, 0.17, 1]);
                        
                        translate([0.62, 0.75, -0.1])
                        cube([0.12, 0.17, 1]);
                    }
                }
            }
        }
    }
    }