// Card holder for Waveshare CM4-IO-BASE-A (SKU 19887)

$fn = 100;

module board() {
    color(c = [.3, .7, .3, 1]) {
        difference() {
            cube ([85, 56, 1.5]);
            translate([23.5, 3.5, 0])
                cylinder(h = 10, r = 1.5, center = true);
            translate([23.5, 52.5, 0])
                cylinder(h = 10, r = 1.5, center = true);
            translate([81.5, 3.5, 0])
                cylinder(h = 10, r = 1.5, center = true);
            translate([81.5, 52.5, 0])
                cylinder(h = 10, r = 1.5, center = true);
        }
    }
    color(c = [.7, .7, .75, 1]) {
        // Ethernet
        translate([7.65, 10.25, 8.5])
            cube ([21.3, 16, 13.4], center = true);
        // USB
        translate([5.65, 29, 10])
            cube ([17.3, 13, 14], center = true);
        // Display Port
        translate([3.5, 46.9, 4.75])
            cube ([11, 15.2, 6.5], center = true);
    }
}

module board_holder() {
    color(c = [.3, .3, .3, 1]) {
        difference() {
            union() {
                difference() {
                    union() {
                        translate([-2.5, 0, -14])
                            cube ([87.5, 100.2, 2]);
                        translate([34.2, -10, -14])
                            cube ([40, 100.2, 2]);
                    }
                    union() {
                        translate([7.5, 7, -15])
                            cube ([65, 42, 4]);
                        translate([7.5, 56, -15])
                            cube ([65, 36, 4]);
                    }
                }

                translate([22.5, 0, -14])
                    cube ([2, 100.2, 8.5]);

                translate([-2.5, 0, -14])
                    cube ([87.5, 2, 11.5]);

                translate([-2.5, 98.2, -14])
                    cube ([87.5, 2, 11.5]);

                translate([84, 0, -14])
                    cube ([2, 100.2, 11.5]);

                translate([-2.5, -10, -14])
                    cube ([2, 122.2, 36]);

                translate([-13.93, 110.2, -14])
                    cube ([21.43, 2, 36]);


                translate([-2.5, 0, -14])
                    cube ([10, 112.2, 2]);

                translate([5.5, 98.2, -14])
                    cube ([2, 14, 11.5]);

                translate([23.5, 3.5, -7])
                    cylinder(h = 14, r = 3.5, center = true);
                translate([23.5, 52.5, -7])
                    cylinder(h = 14, r = 3.5, center = true);
                translate([81.5, 3.5, -7])
                    cylinder(h = 14, r = 3.5, center = true);
                translate([81.5, 52.5, -7])
                    cylinder(h = 14, r = 3.5, center = true);
            }
            union() {

                // Screw holes
                translate([-7.5, 108, -8]) {
                    rotate([90, 0, 0])
                        cylinder(h = 20, r = 2.25, center = true);
                }
                translate([-7.5, 108, 16]) {
                    rotate([90, 0, 0])
                        cylinder(h = 20, r = 2.25, center = true);
                }

                translate([23.5, 3.5, -7])
                    cylinder(h = 16, r = 1.05, center = true);
                translate([23.5, 52.5, -7])
                    cylinder(h = 16, r = 1.05, center = true);
                translate([81.5, 3.5, -7])
                    cylinder(h = 16, r = 1.05, center = true);
                translate([81.5, 52.5, -7])
                    cylinder(h = 16, r = 1.05, center = true);

                // Ethernet
                translate([7.65, 10.25, 8.5])
                    cube ([30, 18, 15.4], center = true);
                // USB
                translate([5.65, 29, 9.75])
                    cube ([30, 15, 16.5], center = true);
                // Display Port
                translate([3.5, 46.9, 4.75])
                    cube ([13, 17.2, 8.5], center = true);
            }
        }
    }
}


// board();
board_holder();