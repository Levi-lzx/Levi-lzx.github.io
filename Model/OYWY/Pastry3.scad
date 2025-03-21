// 盒子的尺寸
box_length = 100;  // 盒子长度
box_width = 100;   // 盒子宽度
box_height = 20;   // 盒子高度
wall_thickness = 2; // 盒子壁厚
corner_radius = 5;  // 盒子圆角半径

// 隔板的厚度
divider_thickness = 2; // 隔板厚度

// 老婆饼的尺寸
pastry_radius = 15; // 老婆饼半径
pastry_height = 8;  // 老婆饼高度

// 创建老婆饼
module create_pastry() {
    // 饼的主体（扁平的圆柱体）
    cylinder(h=pastry_height, r=pastry_radius, $fn=50);
    
    // 饼的边缘褶皱
    for (i = [0:30:360]) {
        rotate([0, 0, i]) {
            translate([pastry_radius - 2, 0, 0]) {
                scale([1, 0.5, 1]) {
                    cylinder(h=pastry_height, r=1.5, $fn=20);
                }
            }
        }
    }
    
    // 饼的表面花纹（模拟芝麻）
    for (i = [0:10:360]) {
        rotate([0, 0, i]) {
            for (j = [5:5:pastry_radius - 2]) {
                translate([j * cos(i), j * sin(i), pastry_height]) {
                    sphere(r=0.8, $fn=10); // 芝麻点
                }
            }
        }
    }
    
    // 饼的中心装饰（模拟花纹）
    translate([0, 0, pastry_height]) {
        linear_extrude(height = 1) {
            circle(r=3, $fn=30); // 中心小圆点
        }
    }
}

// 在盒子里放置四块老婆饼
module place_pastries() {
    // 1
    translate([box_length/4, box_width/4, wall_thickness]) {
        create_pastry();
    }
    // 2
    translate([box_length*3/4, box_width/4, wall_thickness]) {
        create_pastry();
    }
    // 3
    translate([box_length/4, box_width*3/4, wall_thickness]) {
        create_pastry();
    }
    // 4
    translate([box_length*3/4, box_width*3/4, wall_thickness]) {
        create_pastry();
    }
}

// 组合盒子、隔板、老婆饼、盖子和把手
place_pastries();