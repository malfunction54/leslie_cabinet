/* slide actuator */
union() {
    translate([2,-0.9,7.8]) {
        difference() {
            union() {
                translate([2,-2,0]) {
                    cube([14,18.5,1]);
                }
                translate([2.0,-2,1]) {
                    cube([4.1,18.5,4]);
                }
                translate([11.9,-2,1]) {
                    cube([4.1,18.5,4]);
                }
            }
            translate([5.65,4.5,-1]) {
                cube([6.6,5.5,6.2]);
            }
        }
    }
}
