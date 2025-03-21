$fn = 100;
/*Box*/

    /*Dragon with column*/
    
        /*1*/
        translate([-9, 9, -5]){
            
        /*column*/
        cylinder(12, 0.5, 0.5);
        
        /*Chapiter*/
        translate([0, 0, 12])
        cylinder(0.5, 0.7, 0.7);
        
        translate([0, 0, 11.5])
        cylinder(0.5, 0.5, 0.7);
        
        translate([0, 0, 11.3])
        cylinder(0.2, 0.6, 0.5);
        
        translate([0, 0, 10.9])
        cylinder(0.4, 0.6, 0.6);
        
        /*Dragon*/
        
        /*Head*/
        translate([-2.1, 1.4, 13]){
            scale(v = [0.5, 0.5, 0.5]){
                rotate([90, 45, -45]){
                    linear_extrude(2.1){
                        polygon(points = [
                            [0, 0], [1, 1.5], [4, 1.5], [5, 3], [8, 3], [9, 0]
                            ]
                        );
                    }
                
                    linear_extrude(2.1){
                        polygon(points = [
                        [1, -2], [3, -2.5], [8, -1.5], [9, 0], [5, 0]
                            ]
                        );
                    }
                }
            }
        }
        
        /*Eye*/
        translate([-0.8, -1.2, 11.5]){
            rotate([45, 0, 45]){
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
                
                translate([0.8, 0, 0])
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
            }
        }
        
        /*Horn*/
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
            }
        }
        }
        
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                mirror([1, 1, 0]){
                translate([-1, -1, 0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
                }
                }
            }
            }
        }
        
        /*Ball*/
        translate([-2.8, 1.37, 12.57])
        sphere(0.64);
        
        /*Body*/
        scale([0.5, 0.5, 0.5]){
            linear_extrude(height = 20, twist = 500)
            translate([2, 0, 0])
            circle(1);
        }
        }
        
        /*2*/
        mirror([0, 1, 0]){
        translate([-9, 9, -5]){
            
        /*column*/
        cylinder(12, 0.5, 0.5);
        
        /*Chapiter*/
        translate([0, 0, 12])
        cylinder(0.5, 0.7, 0.7);
        
        translate([0, 0, 11.5])
        cylinder(0.5, 0.5, 0.7);
        
        translate([0, 0, 11.3])
        cylinder(0.2, 0.6, 0.5);
        
        translate([0, 0, 10.9])
        cylinder(0.4, 0.6, 0.6);
        
        /*Dragon*/
        
        /*Head*/
        translate([-2.1, 1.4, 13]){
            scale(v = [0.5, 0.5, 0.5]){
                rotate([90, 45, -45]){
                    linear_extrude(2.1){
                        polygon(points = [
                            [0, 0], [1, 1.5], [4, 1.5], [5, 3], [8, 3], [9, 0]
                            ]
                        );
                    }
                
                    linear_extrude(2.1){
                        polygon(points = [
                        [1, -2], [3, -2.5], [8, -1.5], [9, 0], [5, 0]
                            ]
                        );
                    }
                }
            }
        }
        
        /*Eye*/
        translate([-0.8, -1.2, 11.5]){
            rotate([45, 0, 45]){
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
                
                translate([0.8, 0, 0])
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
            }
        }
        
        /*Horn*/
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
            }
        }
        }
        
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                mirror([1, 1, 0]){
                translate([-1, -1, 0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
                }
                }
            }
            }
        }
        
        /*Ball*/
        translate([-2.8, 1.37, 12.57])
        sphere(0.64);
        
        /*Body*/
        scale([0.5, 0.5, 0.5]){
            linear_extrude(height = 20, twist = 500)
            translate([2, 0, 0])
            circle(1);
        }
        }
        }
    
        mirror([1, 0, 0]){
        /*3*/
        translate([-9, 9, -5]){
            
        /*column*/
        cylinder(12, 0.5, 0.5);
        
        /*Chapiter*/
        translate([0, 0, 12])
        cylinder(0.5, 0.7, 0.7);
        
        translate([0, 0, 11.5])
        cylinder(0.5, 0.5, 0.7);
        
        translate([0, 0, 11.3])
        cylinder(0.2, 0.6, 0.5);
        
        translate([0, 0, 10.9])
        cylinder(0.4, 0.6, 0.6);
        
        /*Dragon*/
        
        /*Head*/
        translate([-2.1, 1.4, 13]){
            scale(v = [0.5, 0.5, 0.5]){
                rotate([90, 45, -45]){
                    linear_extrude(2.1){
                        polygon(points = [
                            [0, 0], [1, 1.5], [4, 1.5], [5, 3], [8, 3], [9, 0]
                            ]
                        );
                    }
                
                    linear_extrude(2.1){
                        polygon(points = [
                        [1, -2], [3, -2.5], [8, -1.5], [9, 0], [5, 0]
                            ]
                        );
                    }
                }
            }
        }
        
        /*Eye*/
        translate([-0.8, -1.2, 11.5]){
            rotate([45, 0, 45]){
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
                
                translate([0.8, 0, 0])
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
            }
        }
        
        /*Horn*/
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
            }
        }
        }
        
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                mirror([1, 1, 0]){
                translate([-1, -1, 0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
                }
                }
            }
            }
        }
        
        /*Ball*/
        translate([-2.8, 1.37, 12.57])
        sphere(0.64);
        
        /*Body*/
        scale([0.5, 0.5, 0.5]){
            linear_extrude(height = 20, twist = 500)
            translate([2, 0, 0])
            circle(1);
        }
        }
    
        mirror([0, 1, 0]){
        translate([-9, 9, -5]){
            
        /*4*/
        /*column*/
        cylinder(12, 0.5, 0.5);
        
        /*Chapiter*/
        translate([0, 0, 12])
        cylinder(0.5, 0.7, 0.7);
        
        translate([0, 0, 11.5])
        cylinder(0.5, 0.5, 0.7);
        
        translate([0, 0, 11.3])
        cylinder(0.2, 0.6, 0.5);
        
        translate([0, 0, 10.9])
        cylinder(0.4, 0.6, 0.6);
        
        /*Dragon*/
        
        /*Head*/
        translate([-2.1, 1.4, 13]){
            scale(v = [0.5, 0.5, 0.5]){
                rotate([90, 45, -45]){
                    linear_extrude(2.1){
                        polygon(points = [
                            [0, 0], [1, 1.5], [4, 1.5], [5, 3], [8, 3], [9, 0]
                            ]
                        );
                    }
                
                    linear_extrude(2.1){
                        polygon(points = [
                        [1, -2], [3, -2.5], [8, -1.5], [9, 0], [5, 0]
                            ]
                        );
                    }
                }
            }
        }
        
        /*Eye*/
        translate([-0.8, -1.2, 11.5]){
            rotate([45, 0, 45]){
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
                
                translate([0.8, 0, 0])
                resize(newsize=[0.8, 1, 0.8]) 
                sphere(r=1);
            }
        }
        
        /*Horn*/
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
            }
        }
        }
        
        translate([-0.6, -1.8, 12]){
            rotate(a = 2, v = [-0.7071,0.7071,0]){
            rotate(a = 90, v = [0.7071,0.7071,0]){
                mirror([1, 1, 0]){
                translate([-1, -1, 0]){
                scale([0.05, 0.05, 0.005]){
                    linear_extrude(height = 800, scale = 0.1, twist = 600)
                    translate([20, 1, 0])
                    circle(5);
                }
                }
                }
            }
            }
        }
        
        /*Ball*/
        translate([-2.8, 1.37, 12.57])
        sphere(0.64);
        
        /*Body*/
        scale([0.5, 0.5, 0.5]){
            linear_extrude(height = 20, twist = 500)
            translate([2, 0, 0])
            circle(1);
        }
        }
    }
        }
        
    /*True Box*/
        difference(){
            difference(){
                rotate([180, 0, 0]){
                    minkowski(){
                        cube(5, center = true);
                        cylinder(h = 10, r1 = 2, r2 = 4, center = true);
                    }
                }
        
            translate([0, 0, -10])
            cube([20, 20, 12], center = true);
            }
                
            translate([0, 0, 7.5]){
                minkowski(){
                    cube([4.5, 4.5, 0.01], center = true);
                    sphere(1);
                }
            }
        }
        
        translate([0, 0, -5]){
            minkowski(){
                cube([20, 20, 1], center = true);
                sphere(0.5);
            }
        }