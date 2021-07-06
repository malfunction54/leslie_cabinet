module polyhole(h, d) {
    n = max(round(2 * d),3);
    rotate([0,0,180])
        cylinder(h = h, r = (d / 2) / cos (180 / n), $fn = n);
}

/* bezel */
difference() {
    union() {
        /* outer */
        translate([-19.5,-7.4,29.1]) color("burlywood") {
            cube([61,27.5,10]);
        }
        /* flange */
        minkowski() {
            translate([-20.8,-8.7,35.6]) color("burlywood") {
                cube([63.6,30.1,3.5]);
            }
            $fn=50;
            cylinder(r=5, h=0.01);
        }
        /* descenders */
        difference() {
            union() {
                translate([5,-11.4,15]) {
                    cube([12,4,21]);
                }
                translate([5,20.1,15]) {
                    cube([12,4,21]);
                }
            }
            translate([10.95,32,20.8]) {
                /* rod hole */
                rotate(a=[90,90,0]) {
                    polyhole(h = 62, d = 3.1);
                }
            }
        }
    }
    /* inner */
    translate([-16.5,-4.36,27.0]) {
        cube([55,21.5,29.6]);
    }
}

