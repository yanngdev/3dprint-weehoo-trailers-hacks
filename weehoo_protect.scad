$fn = 256;

translate([290 / 2, 0, -18.5 / 2 - 0.5]) cube([290, 10, 1], true);

difference() {
  union() {
    difference() {

      rotate([0, 90, 0]) cylinder(10, 18.5 / 2 + 2 + 2, 18.5 / 2 + 2 + 2);

      difference() {
        translate([2.5, 0, 0]) rotate([0, 90, 0]) cylinder(5, 18.5 / 2 + 3, 18.5 / 2 + 3);
        translate([2.5, 0, 0]) rotate([0, 90, 0]) cylinder(5, 18.5 / 2 + 1, 18.5 / 2 + 1);
      }

      translate([0, 0, 17.5]) rotate([0, 90, 0]) cylinder(10, 18.5 / 2 + 8, 18.5 / 2 + 8, $fn = 8);
      rotate([0, 90, 0]) cylinder(10, 18.5 / 2, 18.5 / 2);
    }


    translate([14 * 20, 0, 0]) difference() {
      rotate([0, 90, 0]) cylinder(10, 18.5 / 2 + 2 + 2, 18.5 / 2 + 2 + 2);

      difference() {
        translate([2.5, 0, 0]) rotate([0, 90, 0]) cylinder(5, 18.5 / 2 + 3, 18.5 / 2 + 3);
        translate([2.5, 0, 0]) rotate([0, 90, 0]) cylinder(5, 18.5 / 2 + 1, 18.5 / 2 + 1);
      }


      translate([0, 0, 17.5]) rotate([0, 90, 0]) cylinder(10, 18.5 / 2 + 8, 18.5 / 2 + 8, $fn = 8);
      rotate([0, 90, 0]) cylinder(10, 18.5 / 2, 18.5 / 2);
    }

    for (i = [1: 1: 13]) {
      translate([i * 20, 0, 0]) {
        difference() {
          rotate([0, 90, 0]) cylinder(10, 18.5 / 2 + 2, 18.5 / 2 + 2);
          translate([0, 0, 12]) rotate([0, 90, 0]) cylinder(10, 18.5 / 2, 18.5 / 2, $fn = 8);
          rotate([0, 90, 0]) cylinder(10, 18.5 / 2, 18.5 / 2);
        }
      }
    }
  }

  color("green") translate([290 / 2, 0, -18.5 / 2 - 6]) cube([290, 20, 10], true);
}