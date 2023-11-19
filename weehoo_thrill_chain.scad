$fn = 256;
d1 = 16;
d2 = 25.5;

difference() {
  union() {
    translate([0, d2 / 2 + 16 / 2, 20 + d2 / 2 + d1 / 2]) rotate([0, 90, 0]) cylinder(15, d1 / 2 + 1.5, d1 / 2 + 1.5);

    translate([0, -5, 0]) rotate([0, 90, 0]) cylinder(15, d2 / 2 + 2.5, d2 / 2 + 2.5);
    difference() {
      translate([0, 15, 0]) rotate([0, 90, 0]) cylinder(15, d2 / 2 + 7.5, d2 / 2 + 7.50, $fn = 8);

      difference() {
        translate([5, -5, 0]) rotate([0, 90, 0]) cylinder(5, d2 / 2 + 2.5 + 2.5, d2 / 2 + 2.5 + 2.5);
        translate([0, -5, 0]) rotate([0, 90, 0]) cylinder(15, d2 / 2 + 2.5, d2 / 2 + 2.5);
      }
    }
    translate([0, 25.5 / 2 + d1 / 2, -(25.5 / 2 + 20 + d1 / 2)]) rotate([0, 90, 0]) cylinder(15, d1 / 2 + 1.5, d1 / 2 + 1.5);

    translate([15 / 2, 15 / 2 + d2 / 2, (d2 / 2 + 20 + d1 / 2) / 2]) cube([15, 15, d2 / 2 + 20 + d1 / 2], true);
    translate([15 / 2, 15 / 2 + d2 / 2, -(d2 / 2 + 15 + d1 / 2) / 2]) cube([15, 15, d2 / 2 + 15 + d1 / 2], true);
  }

  color("green") {
    translate([15, 15 / 2 + d2 / 2, 0]) cube([50, 10, 55], true);

    difference() {
      translate([5, d2 / 2 + 16 / 2, 20 + d2 / 2 + d1 / 2]) rotate([0, 90, 0]) cylinder(5, d1 / 2 + 1.5 + 2.5, d1 / 2 + 1.5 + 2.5);
      translate([0, d2 / 2 + 16 / 2, 20 + d2 / 2 + d1 / 2]) rotate([0, 90, 0]) cylinder(15, d1 / 2 + 1.5, d1 / 2 + 1.5);
    }

    difference() {
      translate([5, 25.5 / 2 + d1 / 2, -(25.5 / 2 + 20 + d1 / 2)]) rotate([0, 90, 0]) cylinder(5, d1 / 2 + 1.5 + 2.5, d1 / 2 + 1.5 + 2.5);
      translate([0, 25.5 / 2 + d1 / 2, -(25.5 / 2 + 20 + d1 / 2)]) rotate([0, 90, 0]) cylinder(15, d1 / 2 + 1.5, d1 / 2 + 1.5);
    }


    translate([15, 15 / 2 + d2 / 2 + 12.5, 0]) cube([50, 10, d2 / 2 + 10 + d1 / 2], true);

    translate([0, d2 / 2 + d1 / 2, 20 + d2 / 2 + d1 / 2]) rotate([0, 90, 0]) cylinder(30, d1 / 2, d1 / 2);
    translate([0, d2 / 2 + d1 / 2 - 12.5, 20 + d2 / 2 + d1 / 2]) rotate([0, 90, 0]) cylinder(30, d1 / 2 + 1, d1 / 2 + 1, $fn = 6);

    rotate([0, 90, 0]) translate([0, -5, 0]) cylinder(300, d2 / 2, d2 / 2);
    translate([0, -17.5 - 5, 0]) rotate([0, 90, 0]) cylinder(30, d2 / 2 + 2, d2 / 2 + 2, $fn = 6);

    translate([0, d2 / 2 + d1 / 2, -(d2 / 2 + 20 + d1 / 2)]) rotate([0, 90, 0]) cylinder(30, d1 / 2, d1 / 2);
    translate([0, d2 / 2 + d1 / 2 - 12.5, -(d2 / 2 + 20 + d1 / 2)]) rotate([0, 90, 0]) cylinder(30, d1 / 2 + 1, d1 / 2 + 1, $fn = 6);
  }
}
