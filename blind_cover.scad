$fn = 100;

module board_holder() {
    color(c = [.3, .3, .3, 1]) {
        difference() {
            union() {

                translate([-2.5, -10, -14])
                    cube ([2, 122.2, 36]);

                translate([-13.93, 110.2, -14]) {
                    cube ([13.43, 2, 36]);
                }

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
            }
        }
    }
}

rotate([0, 90, 0]) {
    board_holder();
}