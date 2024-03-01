$fn = 100;

// 85.8


module beam(x) {
    difference() {
        union() {
            difference() {
                translate ([0, -4, 0]) {
                    cube([x + 5.8, 8, 5]);
                }
                translate ([7.5, -2.5, 1.5]) {
                    cube([100, 5, 5]);
                }
            }
            translate ([x - 1.9, -4, 0])
                cube([7.7, 8, 7]);
            translate ([0, -11, -2.5])
                cube([5.5, 22, 6.5]);
            translate ([0, -3.5, -6.5])
                cube([5.5, 7, 10.5]);
        }
        union() {
            translate([x + 1.95, 0, 3.5]) {
                cylinder(h = 20, r = 1.25, center = true);
            }
            translate ([-.5, -12, 4]) {
                cube([6.5, 24, 6]);
            }
            translate ([1.75, -9, -1.5]) {
                cube([2, 18, 10]);
            }
            // 7.5
            translate([0, 0, -3.5]) {
                rotate([0, 90, 0])
                cylinder(h = 20, r = 1.4, center = true);
            }
        }
    }
}

beam(42);

translate([0, 30, 0])
    beam(30);