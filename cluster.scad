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

module cover() {
    color(c = [0.3, 0.3, 0.3]) {
        translate([-14, -11, -2])
        difference() {
            union() {
                difference() {
                    // ground plate
                    cube([132, 190, 130]);
                    translate([2, 2, -2])
                        cube([128, 186, 130]);
                }
                translate([66, 95, 128]) {
                    rotate([0, 0, 180])
                        cof_add(2.1);
                }
                translate([130, 95, 65]) {
                    rotate([0, 270, 180])
                        cof_add(2.1);
                }
                translate([0, 7.5, 6]) {
                    // cube([10, 175 , 2]);
                }
            }
            union() {
                translate([-4, 10, 8])
                    cube([10, 170, 110]);
                translate([0, 95, 121])
                    cube([10, 16, 12], center = true);
                translate([66, 95, 128]) {
                    rotate([0, 0, 180])
                        cof_sub(2.1);
                }
                translate([130, 95, 65]) {
                    rotate([0, 90, 180])
                        cof_sub(2.1);
                }
            }
        }
    }
}

module rpi() {
    rotate([90, 0, 0]) {
        translate([2.5, 10, -22]) {
            color(c = [.3, .7, .3, 1]) {
                difference() {
                    union() {
                        cube ([85, 56, 1.5]);
                        translate([20, 0, 15.5])
                            cube ([65, 56, 1.5]);
                    }
                    translate([23.5, 3.5, 10])
                        cylinder(h = 40, r = 1.5, center = true);
                    translate([23.5, 52.5, 10])
                        cylinder(h = 40, r = 1.5, center = true);
                    translate([81.5, 3.5, 10])
                        cylinder(h = 40, r = 1.5, center = true);
                    translate([81.5, 52.5, 10])
                        cylinder(h = 40, r = 1.5, center = true);
                }
            }
            color(c = [.7, .7, .3, 1]) {
                    translate([23.5, 3.5, 8.5])
                        cylinder(h = 14, r = 3y, center = true);
                    translate([23.5, 52.5, 8.5])
                        cylinder(h = 14, r = 3, center = true);
                    translate([81.5, 3.5, 8.5])
                        cylinder(h = 14, r = 3, center = true);
                    translate([81.5, 52.5, 8.5])
                        cylinder(h = 14, r = 3, center = true);
            }
            color(c = [.3, .3, .3, 1]) {
                translate([27.5, 14, 17])
                    cube ([15, 19, 16]);
                translate([45, 14, 17])
                    cube ([15, 19, 16]);
                translate([62.5, 14, 17])
                    cube ([15, 19, 16]);
            }
            color(c = [.3, 1, .3, 1]) {
                translate([27.5, 3, 17])
                    cube ([15, 10, 14]);
                translate([45, 3, 17])
                    cube ([15, 10, 14]);
                translate([62.5, 3, 17])
                    cube ([15, 10, 14]);
            }
        }
    }
}

module holder() {
    rotate([90, 0, 0]) {
        translate([2.5, 10, -22]) {
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

module vstrut(dy) {
    translate([0, dy, 0]) {
        translate([-2, -5, -2])
            cube([2, 6, 122]);
        translate([-2, -3, -2])
            cube([10, 2, 122]);

        if (dy != 92) {
            multmatrix([
                        [1, 0, -.7, -2 + 122 * .7],
                        [0, 1, 0, -3],
                        [0, 0, 1, -2],
                        [0, 0, 0, 1]
                        ])
                cube([10, 2, 122]);
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

module rack() {
    color(c = [1, 0.7, 0, 1]) {
        difference() {
            union() {
                translate([-14, -11, -2])
                    difference() {
                        cube([132, 190, 2]);
                    union() {
                        translate([12, 20, -5])
                            cube([108, 158, 10]);
                        // Screw holes
                        translate([25, 6, 0])
                            cylinder(h = 30, r = 1.75, center = true);
                        translate([66, 6, 0])
                            cylinder(h = 30, r = 1.75, center = true);
                        translate([117, 6, 0])
                            cylinder(h = 30, r = 1.75, center = true);
                        translate([25, 184, 0])
                            cylinder(h = 30, r = 1.75, center = true);
                        translate([66, 184, 0])
                            cylinder(h = 30, r = 1.75, center = true);
                        translate([117, 184, 0])
                            cylinder(h = 30, r = 1.75, center = true);
                    }
                }

                /* Front lower beam */
                translate([-2.5, -2.5, -2])
                    cube([7, 173, 12]);
                translate([-2.5, -5, -2])
                    cube([2.5, 178, 12]);

                /* Front upper beam */
                translate([-11.43, -8.5, 116])
                    cube([10.93, 185, 4]);

                /* Beams for card holders */
                translate([-2.5, -1, -2])
                    cube([115.5, 2, 12]);
                translate([-2.5, 31.5, -2])
                    cube([115.5, 7, 12]);
                translate([-2.5, 71.5, -2])
                    cube([115.5, 7, 12]);
                translate([-2.5, 123.5, -2])
                    cube([115.5, 7, 12]);
                translate([-2.5, 163.5, -2])
                    cube([115.5, 7, 12]);

                vstrut(0);
                vstrut(40);
                vstrut(80);
                translate([-2, 75, -2])
                    cube([2, 18, 122]);
                vstrut(132);
                vstrut(172);

                /* Vertical beams */
                translate([-11.5, -8.5, -2])
                    cube([11.5, 4, 122]);
                translate([-11.5, 172.5, -2])
                    cube([11.5, 4, 122]);

                translate([109.5, -8.5, -2])
                    cube([6, 6, 40]);
                translate([109.5, 170.5, -2])
                    cube([6, 6, 40]);
                /* Rear lower beam */
                translate([110.5, -5, -2])
                    cube([2.5, 178, 12]);


            }
            union() {
                /* Rear card holder slits */
                translate([34.7, 33.5, -4])
                    cube([44, 3, 16]);
                translate([34.7, 73.5, -4])
                    cube([44, 3, 16]);
                translate([34.7, 125.5, -4])
                    cube([44, 3, 16]);
                translate([34.7, 165.5, -4])
                    cube([44, 3, 16]);

                /* Front card holder slits */
                translate([-.5, -1, -4])
                    cube([3, 38, 16]);
                translate([-.5, 39, -4])
                    cube([3, 38, 16]);
                translate([-.5, 91, -4])
                    cube([3, 38, 16]);
                translate([-.5, 131, -4])
                    cube([3, 38, 16]);
                
                translate([0, 0, 0])
                    screwholes();
                translate([0, 40, 0])
                    screwholes();
                translate([0, 92, 0])
                    screwholes();
                translate([0, 132, 0])
                    screwholes();

                translate([11, 173, 15])
                    cylinder(h = 30, r = 3.5, center = true);
                translate([52, 173, 15])
                    cylinder(h = 30, r = 3.5, center = true);
                translate([103, 173, 15])
                    cylinder(h = 30, r = 3.5, center = true);
                    
                translate([11, -5, 15])
                    cylinder(h = 30, r = 3.5, center = true);
                translate([52, -5, 15])
                    cylinder(h = 30, r = 3.5, center = true);
                translate([103, -5, 15])
                    cylinder(h = 30, r = 3.5, center = true);

            }
        }
    }
}
/*
translate([0, 0, 0])
    holder();

translate([0, 40, 0])
    holder();

translate([0, 92, 0])
    holder();

translate([0, 132, 0])
    holder();

translate([0, 92, 0])
    rpi();
cover();
rack();
*/

rotate([180, 0, 0]){
    //cover();
}
rack();