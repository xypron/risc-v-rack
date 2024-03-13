$fn = 100;

$core_hole_radius = 1.05; /* M2 */
$have_nvme = true;

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
        translate([7.65, 56 - 10.25, 8.5])
            cube ([21.3, 16, 13.4], center = true);
        // USB
        translate([5.65, 56 - 29.1, 10])
            cube ([17.3, 13, 14], center = true);
        translate([5.65, 56 - 47, 10])
            cube ([17.3, 13, 14], center = true);
    }
}

module debug_probe() {
    color(c = [.7, .7, .7, 1]) {
        translate([43.5, 82.2, -7])
            cube ([37, 31, 10.1], center = true);
    }
}

module board_holder() {
    color(c = [.3, .3, .3, 1]) {
        difference() {
            union() {
                difference() {
                    union() {
                        translate([-2.5, 0, -14]) {
                            cube ([87.5, 100.2, 2]);
                        }
                        translate([34.2, -10, -14]) {
                            cube ([40, 100.2, 2]);
                        }
                    }
                    union() {
                        translate([7.5, 7, -15])
                            cube ([65, 42, 4]);
                        translate([7.5, 56, -15])
                            cube ([65, 36, 4]);
                    }
                }

                translate([22.5, 0, -14])
                    cube ([2, 100.2, 11.5]);

                translate([-2.5, 0, -14])
                    cube ([87.5, 2, 11.5]);

                translate([-2.5, 98.2, -14])
                    cube ([87.5, 2, 11.5]);

                translate([84, 0, -14])
                    cube ([2, 100.2, 11.5]);

                translate([-2.5, -10, -14]) {
                    cube ([2, 122.2, 36]);
                }

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

                // Debug probe
                translate([43.5 , 82.2, -8])
                    cube ([42, 36, 12], center = true);

                translate([21, 67.7, -8])
                    cylinder(h = 12, r = 3.5, center = true);

                translate([66, 96.7, -8])
                    cylinder(h = 12, r = 3.5, center = true);

            }
            union() {

                // USB debug probe
                translate([84, 82.2, -7])
                    cube ([37, 13, 10], center = true);

                // Debug probe
                translate([43.5, 82.2, -2])
                    cube ([38, 32, 20], center = true);
                translate([43.5, 82.2, -2])
                    cube ([45, 16, 20], center = true);

                translate([21, 67.7, -8])
                    cylinder(h = 16, r = $core_hole_radius, center = true);

                translate([66, 96.7, -8])
                    cylinder(h = 16, r = $core_hole_radius, center = true);


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
                    cylinder(h = 16, r = $core_hole_radius, center = true);
                translate([23.5, 52.5, -7])
                    cylinder(h = 16, r = $core_hole_radius, center = true);
                translate([81.5, 3.5, -7])
                    cylinder(h = 16, r = $core_hole_radius, center = true);
                translate([81.5, 52.5, -7])
                    cylinder(h = 16, r = $core_hole_radius, center = true);

                // Ethernet
                translate([7.65, 56 - 10.25, 8.5])
                    cube ([30, 18, 15.4], center = true);
                // USB
                translate([5.65, 56 - 29.1, 10])
                    cube ([30, 15, 16], center = true);
                translate([5.65, 56 - 47, 10])
                    cube ([30, 15, 16], center = true);
                // NVMe
                if ($have_nvme) {
                    translate([7.65, 37, 21])
                        cube ([30, 28, 10], center = true);
                }
            }
        }
    }
}

module crossbar() {
    color([1, .5, 0]) {
        translate([20, 105, -14]) {
            difference() {
                union() {
                    cube ([53.535, 7, 2]);
                    translate([0, 3.5, 1]) {
                        cylinder(h = 2, r = 3.5, center = true);
                    }
                    translate([53.535, 3.5, 1]) {
                        cylinder(h = 2, r = 3.5, center = true);
                    }
                }
                union() {
                    translate([0, 3.5, 1]) {
                        cylinder(h = 5, r = 1.5, center = true);
                    }
                    translate([53.535, 3.5, 1]) {
                        cylinder(h = 5, r = 1.5, center = true);
                    }
                }
            }
        }
    }
}

// board();
// debug_probe();
crossbar();
board_holder();
