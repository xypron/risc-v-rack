$fn = 100;

module cof_add(f) {
        difference() {
                cylinder(h = 4, r = 15 * f, center = true);
                cylinder(h = 8, r1 = 13 * f + 2, r2 = 13 * f - 6, center = true);
        }
        difference() {
                cylinder(h = 4, r1 = 22 * f, r2 = 22 * f + 4, center = true);
                cylinder(h = 8, r = 20 * f, center = true);
        }
        translate([0, 17.5 * f, 0]) {
            cylinder(h = 4, r1 = 8.84 * f, r2 = 8.84 * f + 4, center = true);
        }
        translate([15.16 * f, -8.75 * f, 0]) {
            cylinder(h = 4, r1 = 8.84 * f, r2 = 8.84 * f + 4, center = true);
        }
        translate([-15.16 * f, -8.75 * f, 0]) {
            cylinder(h = 4, r1 = 8.84 * f, r2 = 8.84 * f + 4, center = true);
        }
}

module cof_sub(f) {
        difference() {
                cylinder(h = 8, r = 20 * f, center = true);
                union() {
                    cylinder(h = 10, r = 15 * f, center = true);
                    translate([0, 17.5 * f, 0]) {
                        cylinder(h = 10, r = 8.84 * f, center = true);
                    }
                    translate([15.16 * f, -8.75 * f, 0]) {
                        cylinder(h = 10, r = 8.84 * f, center = true);
                    }
                    translate([-15.16 * f, -8.75 * f, 0]) {
                        cylinder(h = 10, r = 8.84 * f, center = true);
                    }
                }
        }
        translate([0, 17.5 * f, 0]) {
            cylinder(h = 8, r = 6.14 * f, center = true);
        }
        translate([15.16 * f, -8.75 * f, 0]) {
            cylinder(h = 8, r = 6.14 * f, center = true);
        }
        translate([-15.16 * f, -8.75 * f, 0]) {
            cylinder(h = 8, r = 6.14 * f, center = true);
        }    
}

module board() {
    rotate([90, 0, 0]) {
        translate([2.5, 10, -22]) {
            color(c = [.3, .5, .5, 1]) {
                difference() {
                    cube ([74.2, 100.2, 1.6]);
                    translate([21.7, 3.6, 0])
                        cylinder(h = 10, r = 1.75, center = true);
                    translate([21.7, 96.6, 0])
                        cylinder(h = 10, r = 1.75, center = true);
                    translate([70.7, 3.6, 0])
                        cylinder(h = 10, r = 1.75, center = true);
                    translate([70.7, 96.6, 0])
                        cylinder(h = 10, r = 1.75, center = true);
                }
            }
            color(c = [.7, .7, .7, 1]) {
                // Ethernet
                translate([-3.3, 1.9, 1.6])
                    cube([21.3, 16, 13.5]);
                translate([-3.3, 21.5, 1.6])
                    cube([21.3, 16, 13.5]);
                // HDMI
                translate([-3.3, 42, 3])
                    cube([23, 5.5, 15]);
                // USB
                translate([-3.3, 53.9, 2.3])
                    cube([17.8, 14.6, 15.6]);
                translate([-3.3, 73.4, 2.3])
                    cube([17.8, 14.6, 15.6]);
                // Audio
                translate([-1, 91.5, 1.6])
                    cube([15, 7, 6]);
                translate([0, 95.1, 4.6]) {
                    rotate([0, 90, 0])
                        cylinder(h = 6, r = 3, center = true);
                }
                // NVMe
                translate([24.5, 5, -5.4])
                    cube([21.9, 7, 5.4]);
                // Reset switch
                translate([70.2, 29.3, 1.6])
                    cube([3, 4.5, 3.4]);
                translate([74.2, 31.55, 3.3]) {
                    rotate([0, 90, 0])
                        cylinder(h = 2, r = 1, center = true);
                }
                // Power
                translate([71.7, 13, 1.6])
                    cube([8, 10, 3.4]);
            }
        }
    }
}

module holder() {
    rotate([90, 0, 0]) {
        translate([2.5, 10, -22]) {
            color(c = [.3, .3, .3, 1]) {
                difference() {
                    union() {
                        translate([-13.93, 110.2, -14])
                            cube ([21.43, 2, 36]);
                        translate([-2.5, -10, -14])
                            cube ([2, 122.2, 36]);
                        translate([-2.5, 0, -14])
                            cube ([87.5, 100.2, 2]);
                        translate([34.2, -10, -14])
                            cube ([40, 100.2, 2]);

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
                        // Push rod
                        translate([-1.25, 10, -9]) {
                            rotate([0, 90, 0])
                                cylinder(h = 10, r = 2, center = true);
                        }    
                    }
                }
            }
        }
    }
}

module screwholes() {
    translate([-5, 30, 118]) {
            cylinder(h = 20, r = 1.65, center = true);
    }
    translate([-5, 6, 118]) {
            cylinder(h = 20, r = 1.65, center = true);
    }
}

module vstrut(dy) {
    translate([0, dy, 0]) {
        translate([-2.5, -5, -2])
            cube([2.5, 6, 122]);
        translate([-2, -3, -2])
            cube([10, 2, 122]);
    }
}

module case() {
    color(c = [1, 0.7, 0, 1]) {
        difference() {
            union() {
                difference() {
                    union() {
                        translate([-14, -8.5, -2])
                            cube([129.5, 53, 129]);
                        
                    }
                    union() {
                        translate([-16, -6.5, 0])
                            cube([129.5, 49, 129]);
                        translate([113, 18, 124.5])
                            rotate([90, 0, 0])
                                cylinder(h = 60, r = 1, center = true);
                        translate([113, 18.2, 28])
                            rotate([0, 90, 0])
                                cylinder(h = 60, r = 8, center = true);
                    }
                }

                translate([52, -6.5, 62.5])
                    rotate([90, 90, 0])
                        cof_add(1.5);

                /* Front lower beam */
                translate([-2.5, -2.5, -2])
                    cube([7, 37, 12]);
                translate([-2.5, -5, -2])
                    cube([2.5, 42, 12]);

                /* Front upper beam */
                translate([-11.43, -8.5, 116])
                    cube([10.93, 49, 4]);

                vstrut(0);
                vstrut(40);

                /* Beams for card holders */
                translate([-2.5, 31.5, -2])
                    cube([115.5, 7, 12]);


                /* Vertical beams */
                translate([-11.5, -8.5, -2])
                    cube([11.5, 4, 122]);
                translate([-11.5, 40.5, -2])
                    cube([11.5, 4, 122]);

            }
            union() {
                /* Rear card holder slits */
                translate([34.7, 33.5, -4])
                    cube([44, 3, 16]);

                /* Front card holder slits */
                translate([-.5, -1, -4])
                    cube([3, 38, 16]);
                
                translate([0, 0, 0])
                    screwholes();
                translate([0, 40, 0])
                    screwholes();
                translate([0, 92, 0])
                    screwholes();
                translate([0, 132, 0])
                    screwholes();
                translate([52, -6.5, 62.5])
                    rotate([90, 90, 0])
                        cof_sub(1.5);
                translate([113, 18, 124.5])
                    rotate([90, 0, 0])
                        cylinder(h = 49, r = 3.5, center = true);
                difference() {
                        translate([115.5, 18, 127])
                                cube([5, 60, 5], center = true);
                        translate([113, 18, 124.5])
                            rotate([90, 0, 0])
                                cylinder(h = 60, r = 2.5, center = true);
                }
            }
        }
    }
}

module cover() {
    color(c = [.3, 0.3, 0.3, 1]) {
        difference() {
            union() {
                translate([-14, -6, 125])
                    cube([127, 48, 2]);
                translate([113, 18, 124.5])
                    rotate([90, 0, 0])
                        cylinder(h = 48, r = 2.5, center = true);

                /* Front upper beam */
                translate([-14, -6, 114])
                    cube([2, 48, 13]);

                translate([-9, 18, 124.5])
                    cube([10, 2, 4], center = true);

                translate([-12, 18, 115])
                    rotate([90, 0, 0])
                        cylinder(h = 6, r = 1, center = true);

            }
            union() {
                translate([113, 18, 124.5])
                    rotate([90, 0, 0])
                        cylinder(h = 60, r = 1, center = true);
            }
        }
    }
}

holder();
board();
translate([-.1,0,.1])
    cover();
case();
rotate([180,0,0]) {
    //cover();
}
