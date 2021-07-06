$fn=50;
/* Leslie Speaker assembly */
union() {
    translate([1,0.75,0.75]) color("darkgray") {
        difference() {
            cube([3,15,21]);
            translate([-0.25,0.75,0.75]) {
                cube([1.75,13.5,19.5]);
            }
        }
    }
    translate([4,8,14.5]) color("tan") {
        rotate(a=[0,90,0]) {
            cylinder(r=6.5,h=8);
        }
    }
    translate([4,2,2]) color("gray") {
        cube([6.5,4,4]);
    }
}
/* cabinet bottom */
difference() {
    color("tan") cube([13.5, 0.75, 23.25]);
    translate([5,-0.5,10]) {
        cube([6,1.5,8]);
    }
}
/* cabinet top */
difference() {
    translate([0,15.75,0]) color("tan") {
        cube([13.5,0.75, 23.25]);
    }
    translate([5,15.5,10]) {
        cube([6,1.5,8]);
    }
}
/* speaker-side panel */
/* x=0 to sit flush */
translate([0,0.75,0]) color("wheat") {
    cube([0.75,15,23.25]);
}
/* cylinder-side panel*/
/* x=12.75 to sit flush */
translate([12.75,0.75,0]) color("wheat") {
    cube([0.75,15,23.25]);
}
/* grill */
/* z=21.5 to sit flush */
translate([0.75,0.75,26.70]) color("wheat") {
    difference() {
        cube([12,15,0.75]);
        translate([4,3.5,-0.25]) {
            cube([6,8,1.5]);
        }
    }
}

/* name plate */

translate([1.75,1.5,22.1]) color("black") {
    cube([1.4375,13.5,0.5]);
}

/* grill border */
/* z=22.5 to sit flush */
translate([0.75,0.75,32.5]) color("burlywood") {
    difference() {
        cube([12,15,0.75]);
        translate([1,1,-0.5]) {
            cube([10,13,1.5]);
        }
    }
}

/* rear panel */
/* z=0 to sit flush */
translate([0.75,0.75,0]) color("burlywood") {
    difference() {
        cube([12,15,0.75]);
        /* jack */
        translate([2.125,2.125,-0.25]) {
            cylinder(r=0.625,h=1.5);
        }
        /* sound port */
        /*
        translate([4,3.5,-0.25]) {
            cube([6,8,1.5]);
        }
        */
        /* power connector */
        translate([9.5,1.5,-0.25]) {
            cube([1.25,1,1.5]);
        }
        /* Leslie switch */
        translate([9.5,11.5,-0.25]) {
            cube([1,2.4,1.5]);
        }
        /*
        translate([5.5,1.5,-0.25]) {
            cube([2.4,1,1.5]);
        }
        */
    }
}
/* rear panel cleats */
    /* left */
translate([11.75,0.75,0.75]) {
    cube([1,15,1]);
}

    /* top */
translate([4.5,14.75,0.75]) {
    cube([7,1,1]);
}
    /* bottom */
translate([4.5,0.75,0.75]) {
    cube([7,1,1]);
}

/* front panel cleats */
    /* right bottom */
translate([11.75,0.75,20.75]) {
    cube([1,4,1]);
}
    /* right top */
translate([11.75,11.75,20.75]) {
    cube([1,4,1]);
}
    /* top */
translate([4.5,14.75,20.75]) {
    cube([7,1,1]);
}
    /* bottom */
translate([4.25,0.75,20.75]) {
    cube([7,1,1]);
}

/* reverb unit */
/*
    16.75"
    4.5"
    1.5" deep, with bushings
*/

/* cut list */

/*
  bottom: 13.5" x 23.25"
  side: 15" x 23.25"
  front baffle: 12" x 15"
  grill: 12" x 15"

  top: 13.5" x 23.25"
  side: 15" x 23.25"
  rear panel: 12" x 15"
*/
