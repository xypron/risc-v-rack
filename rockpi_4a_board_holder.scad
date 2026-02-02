$fn = 100;
dy = 30;
dz = -2;

module board() {
    translate([0, dy, -dz - 13.5]) {
        color(c = [.1, .1, .1, 1]) {
                cube ([85, 56, 12]);
        }
    }
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
                        translate([-2.5, 0, 20])
                            cube ([109.5, 100.2, 2]);
                        translate([34.2, -10, 20])
                            cube ([40, 12, 2]);
                    }
                    union() {
                        if (dy > 15) {
                            translate([7.5, 7, 19])
                                cube ([70, dy - 15, 4]);
                        }
                        translate([7.5, dy, 19])
                            cube ([70, 49, 4]);
                        if (dy < 36) {
                            translate([7.5, 56 + dy, 19])
                                cube ([70, 36 - dy, 4]);
                        }
                        translate([107.5, dy, 19])
                            cube ([144, 149, 4]);
                        translate([87, 7 + dy, 19])
                            cube ([14, 42, 4]);
                    }
                }

                translate([22.5, 0, 11.5 - dz])
                    cube ([2, 100.2, 6 - dz]);

                translate([-2.5, 0, 6.5 - dz]) {
                    cube ([110.5, 2, 11.5 - dz]);
                }

                translate([-2.5, 98.2, 6.5 - dz])
                    cube ([110.5, 2, 11.5 - dz]);

                translate([106, 0, 6.5 - dz])
                    cube ([2, 100.2, 11.5 - dz]);

                translate([-2.5, -10, -14])
                    cube ([2, 122.2, 36]);

                translate([-13.93, 110.2, -14]) {
                    cube ([21.43, 2, 36]);
                }

                translate([-2.5, 0, 20]) {
                    cube ([10, 112.2, 2]);
                }

                translate([5.5, 98.2, 6.5 - dz])
                    cube ([2, 14, 11.5 - dz]);

                translate([23.5, 2 + dy, 13.75 + dz / 2])
                    cube([6, 8, 16.5 - dz], center = true);
                translate([23.5, 54 + dy, 13.75 + dz / 2])
                    cube([6, 8, 16.5 - dz], center = true);
                translate([83, 2 + dy, 13.75 + dz / 2])
                    cube([8, 8, 16.5 - dz], center = true);
                translate([83, 54 + dy, 13.75 + dz / 2])
                    cube([8, 8, 16.5 - dz], center = true);
                // NVMe screw
                translate([104, 32.5 + dy, 11.6 + dz / 2])
                    cylinder(h = 20.8 - dz, r = 3, center = true);

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

                translate([23.5, 3.5 + dy, 11.5 + dz])
                    cube([7, 7, 8], center = true);
                translate([23.5, 52.5 + dy, 11.5 + dz])
                    cube([7, 7, 8], center = true);
                translate([27, 49 + dy, 5.5 + dz])
                    cube([7, 7, 2], center = true);
                translate([81.5, 3.5 + dy, 11.5 + dz])
                    cube([7, 7, 8], center = true);
                translate([81.5, 52.5 + dy, 11.5 + dz])
                    cube([7, 7, 8], center = true);
                translate([78, 3.5 + dy, 5.5 + dz])
                    cube([7, 7, 2], center = true);

                translate([23.5, 3.5 + dy, 4])
                    cylinder(h = 38, r = 1.75, center = true);
                translate([23.5, 52.5 + dy, 4])
                    cylinder(h = 38, r = 1.75, center = true);
                translate([81.5, 3.5 + dy, 4])
                    cylinder(h = 38, r = 1.75, center = true);
                translate([81.5, 52.5 + dy, 4])
                    cylinder(h = 38, r = 1.75, center = true);

                // NVMe screw
                translate([104, 32.5 + dy, 11.6 + dz / 2])
                    cylinder(h = 38, r = 1.05, center = true);

                // Ethernet
                translate([0, 56 - 10.25 + dy, 8 - dz])
                    cube ([10, 18, 16.4], center = true);
                // USB
                translate([0, 56 - 29.1 + dy, 9.5 - dz])
                    cube ([10, 15, 17], center = true);
                translate([0, 56 - 47 + dy, 9.5 - dz])
                    cube ([10, 15, 17], center = true);
                translate([52, 99.2, 6.5 - dz])
                    cube ([40, 16, 10], center = true);
            }
        }
    }
}

// board();

//rotate([0, 180, 0])
    board_holder();