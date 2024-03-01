$fn = 100;
dy = 30;
dz = 5;

module board() {
    translate([0, dy, -dz]) {
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
            translate([7.65, 56 - 10.25, 8.5])
                cube ([21.3, 16, 13.4], center = true);
            // USB
            translate([5.65, 56 - 29.1, 10])
                cube ([17.3, 13, 14], center = true);
            translate([5.65, 56 - 47, 10])
                cube ([17.3, 13, 14], center = true);
        }
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
                        if (dy > 7) {
                            translate([7.5, 7, -15])
                                cube ([70, dy - 7, 4]);
                        }
                        translate([7.5, 7 + dy, -15])
                            cube ([70, 42, 4]);
                        if (dy < 36) {
                            translate([7.5, 56 + dy, -15])
                                cube ([70, 36 - dy, 4]);
                        }
                    }
                }

                translate([22.5, 0, -14])
                    cube ([2, 100.2, 11.5 - dz]);

                translate([-2.5, 0, -14]) {
                    cube ([87.5, 2, 11.5 - dz]);
                }

                translate([-2.5, 98.2, -14])
                    cube ([87.5, 2, 11.5 - dz]);

                translate([84, 0, -14])
                    cube ([2, 100.2, 11.5 - dz]);

                translate([-2.5, -10, -14])
                    cube ([2, 122.2, 36]);

                translate([-13.93, 110.2, -14]) {
                    cube ([21.43, 2, 36]);
                }


                translate([-2.5, 0, -14])
                    cube ([10, 112.2, 2]);

                translate([5.5, 98.2, -14])
                    cube ([2, 14, 11.5 - dz]);

                translate([23.5, 3.5 + dy, -7 - dz / 2])
                    cylinder(h = 14 - dz, r = 3.5, center = true);
                translate([23.5, 52.5 + dy, -7 - dz / 2])
                    cylinder(h = 14 - dz, r = 3.5, center = true);
                translate([81.5, 3.5 + dy, -7 - dz / 2])
                    cylinder(h = 14 - dz, r = 3.5, center = true);
                translate([81.5, 52.5 + dy, -7 - dz / 2])
                    cylinder(h = 14 - dz, r = 3.5, center = true);
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

                translate([23.5, 3.5 + dy, -7])
                    cylinder(h = 16, r = 1.25, center = true);
                translate([23.5, 52.5 + dy, -7])
                    cylinder(h = 16, r = 1.25, center = true);
                translate([81.5, 3.5 + dy, -7])
                    cylinder(h = 16, r = 1.25, center = true);
                translate([81.5, 52.5 + dy, -7])
                    cylinder(h = 16, r = 1.25, center = true);

                // Ethernet
                translate([7.65, 56 - 10.25 + dy, 8.5 - dz])
                    cube ([30, 18, 15.4], center = true);
                // USB
                translate([5.65, 56 - 29.1 + dy, 10 - dz])
                    cube ([30, 15, 16], center = true);
                translate([5.65, 56 - 47 + dy, 10 - dz])
                    cube ([30, 15, 16], center = true);
            }
        }
    }
}

//board();

board_holder();