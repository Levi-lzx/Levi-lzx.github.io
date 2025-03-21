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

// 创建带圆角的盒子
module create_rounded_box(length, width, height, radius) {
    // 底部
    hull() {
        translate([radius, radius, 0]) {
            cylinder(h=height, r=radius, $fn=50);
        }
        translate([length - radius, radius, 0]) {
            cylinder(h=height, r=radius, $fn=50);
        }
        translate([radius, width - radius, 0]) {
            cylinder(h=height, r=radius, $fn=50);
        }
        translate([length - radius, width - radius, 0]) {
            cylinder(h=height, r=radius, $fn=50);
        }
    }
}

// 创建盒子
module create_box() {
    difference() {
        // 外盒
        create_rounded_box(box_length, box_width, box_height, corner_radius);
        // 内盒挖空
        translate([wall_thickness, wall_thickness, wall_thickness]) {
            create_rounded_box(box_length - 2*wall_thickness, box_width - 2*wall_thickness, box_height, corner_radius - wall_thickness);
        }
    }
}

// 创建隔板（十字形）
module create_dividers() {
    // 横向隔板
    translate([0, box_width/2 - divider_thickness/2, 0]) {
        cube([box_length, divider_thickness, box_height]);
    }
    // 纵向隔板
    translate([box_length/2 - divider_thickness/2, 0, 0]) {
        cube([divider_thickness, box_width, box_height]);
    }
}

// 创建盖子
module create_lid() {
    translate([0, 0, box_height]) {
        difference() {
            // 盖子外盒
            create_rounded_box(box_length, box_width, wall_thickness, corner_radius);
            // 盖子内盒挖空
            translate([wall_thickness, wall_thickness, -0.1]) {
                create_rounded_box(box_length - 2*wall_thickness, box_width - 2*wall_thickness, wall_thickness + 0.2, corner_radius - wall_thickness);
            }
        }
    }
}

// 创建把手
module create_handle() {
    translate([box_length / 2, box_width / 2, box_height + wall_thickness]) {
        rotate([90, 0, 0]) {
            cylinder(h=10, r=3, $fn=50, center=true);
        }
    }
}

// 组合盒子、隔板、老婆饼、盖子和把手
create_box();
create_dividers();
create_lid();
create_handle();