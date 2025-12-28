$fn = 100;

$core_hole_radius = 1.05; /* M2 */

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
        
        // Ethernet right
        translate([4.5, 12.85, 23.75])
            cube ([15, 17.2, 11.1], center = true);
        // Ethernet left
        translate([4.5, 56 - 12.85, 23.75])
            cube ([15, 17.2, 11.1], center = true);
        
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
                            cube ([89.5, 102.7, 2]);
                        }
                        translate([-2.5, 0, -14]) {
                            cube ([40, 110.7, 2]);
                        }
                        translate([34.2, -10, -14]) {
                            cube ([40, 100.2, 2]);
                        }
                    }
                    union() {
                        translate([7.5, 7, -15])
                            cube ([65, 29, 4]);
                        translate([0, 47.7, -15])
                            cube ([81.5, 49, 4]);
                        translate([80, 51.2, -15])
                            cube ([5, 42, 4]);
                        translate([0, 44.2, -15])
                            cube ([20, 56, 4]);
                        translate([27, 44.2, -15])
                            cube ([51, 56, 4]);
                    }
                }
                
                translate([22.5, 0, -14])
                    cube ([2, 43.7, 11.5]);

                translate([-2.5, 0, -14])
                    cube ([89.5, 2, 11.5]);

                translate([-2.5, 41.7, -14]) {
                    cube ([89.5, 2, 11.5]);
                }

                translate([-2.5, 100.7, -14]) {
                    cube ([40, 2, 11.5]);
                    cube ([89.5, 2, 3.5]);
                }

                translate([85.5, 0, -14]) {
                    cube ([2, 102.7, 11.5]);
                }

                translate([-2.5, -10, -14]) {
                    cube ([2, 122.2, 36]);
                }

                translate([-13.93, 110.2, -14])
                    cube ([21.43, 2, 36]);

                translate([-2.5, 0, -14])
                    cube ([10, 112.2, 2]);

                translate([5.5, 100.7, -14])
                    cube ([2, 11.5, 11.5]);

                translate([23.5, 47.7, -13])
                    cylinder(h = 2, r = 3.5, center = true);
                translate([23.5, 96.7, -13])
                    cylinder(h = 2, r = 3.5, center = true);
                translate([81.5, 47.7, -13])
                    cylinder(h = 2, r = 3.5, center = true);
                translate([81.5, 96.7, -13])
                    cylinder(h = 2, r = 3.5, center = true);

                // Debug probe
                translate([43.5 , 18, -8])
                    cube ([42, 36, 12], center = true);

                translate([21, 3.5, -8])
                    cylinder(h = 12, r = 3.5, center = true);

                translate([66, 34.5, -8])
                    cylinder(h = 12, r = 3.5, center = true);
            }
            union() {
                // USB debug probe
                translate([84, 18, -7])
                    cube ([37, 13, 10], center = true);

                // Debug probe
                translate([43.5, 18, -2])
                    cube ([38, 32, 20], center = true);
                translate([43.5, 18, -2])
                    cube ([45, 16, 20], center = true);

                translate([21, 3.5, -8])
                    cylinder(h = 16, r = $core_hole_radius, center = true);

                translate([66, 34.5, -8])
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

                translate([23.5, 47.7, -7])
                    cylinder(h = 16, r = 1.5, center = true);
                translate([23.5, 96.7, -7])
                    cylinder(h = 16, r = 1.5, center = true);
                translate([81.5, 47.7, -7])
                    cylinder(h = 16, r = 1.5, center = true);
                translate([81.5, 96.7, -7])
                    cylinder(h = 16, r = 1.5, center = true);

                // Ethernet
                translate([7.65, 100.2 - 10.25, -2])
                    cube ([30, 18, 16], center = true);
                // USB
                translate([5.65, 100.2 - 29.1, -2])
                    cube ([30, 15, 16], center = true);
                translate([5.65, 100.2 - 47, -2])
                    cube ([30, 15, 16], center = true);
                
                // Ethernet right
                translate([4.5, 57.05, 13.25])
                    cube ([15, 19.2, 12.1], center = true);
                // Ethernet left
                translate([4.5, 100.2 - 12.85, 13.25])
                    cube ([15, 19.2, 12.1], center = true);
                    
                // SD-card
                translate([85.5, 72.2, -13]) {
                    cube ([50, 15, 2.5], center = true);
                }
                // Power button
                translate([86.5, 85.5, -10.75]) {
                    rotate([0, 90, 0]) {
                        cylinder(h = 20, r = 1.75, center = true);
                    }
                }
            }
        }
    }
}

module crossbar() {
    color([1, .5, 0]) {
        translate([20, 115, -14]) {
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

translate ([0, 44.2, -12]) {
   //board();
}
//debug_probe();
crossbar();
board_holder();
