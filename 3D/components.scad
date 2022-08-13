height_MDT420E02001=4.2;  // MDT420E02001
height_MDT245E02001=1.8;  // MDT245E02001
height_MDT180E02001=1.8;  // MDT180E02001

module m2_micromod(height) {
  width = 22;
  length = 5.275 + 2.275;

  union() {
    cube([length, width, height], false);
    translate([length, 0,0]) {
      cube([18, width, height + 1.4], false);
    }
  }
}

module jst_ph_2pin() {
  translate([0, -7.9, 0]) {
    cube([6, 7.9, 5.5], false);
  }
}

