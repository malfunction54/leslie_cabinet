/* the 3 position switch */
/*union() color("silver") {
    cube([21.9,12.7,7.8]);
    translate([-6.65,0.95,7.5]) {
        cube([35.2,10.8,0.3]);
    }
}
translate([7.7,3.7,7.8]) color("black") {
        cube ([6.5,5.4,7.9]);
}
*/

/* housing */
module polyhole(h, d) {
    n = max(round(2 * d),3);
    rotate([0,0,180])
        cylinder(h = h, r = (d / 2) / cos (180 / n), $fn = n);
}

difference() {
    /* outer */
    translate([-19.5,-7.4,4.5]) {
        cube([61,27.5,24.6]);
    }
    /* inner */
    translate([-16.5,-4.36,7.5]) {
        cube([55,21.5,29.6]);
    }
    /* bottom hole */
    cube([22,12.8,7.8]);
    translate([10.95,22.5,20.8]) {
        /* rod hole */
        rotate(a=[90,90,0]) {
            polyhole(h = 32, d = 3.1);
        }
    }
}

/* Button Dimensions */
/*
  cap:
  L: 51.8mm
  W: 21.5mm
  D: 12.33mm

  descenders:
  W of triangle: 12.12mm
  D of triangle: 19.37mm
  width of all 3 triangles: 14.55mm

  3 mm throw for the switch
  3.1 mm diameter for button pivot rod

*/
