$fn = 100;

module rpi() {
    rotate([90, 0, 0]) {
        translate([2.5, 0, -22]) {
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
        translate([2.5, 0, -22]) {
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