include <components.scad>

$fn=30;
pcb_height=1.7;
pcb_depth=38;

module pcb_base(thickness) {
  linear_extrude(height=thickness, center=false, convexity=10) {
    difference() {
      import (file="../../reverse-engineering/pcb-cad.dxf", layer="outline");
      import (file="../../reverse-engineering/pcb-cad.dxf", layer="details");
    }
  }
}

module pcb(thickness, full_depth) {
  scale([1,-1,-1]) {
    union() {
      pcb_base(thickness);

      translate([35,0,0]) {
        cube([full_depth - 35, 90, thickness], center=false);
      }

    }
  }
}

module populated_pcb(thickness, depth) {
  pcb(thickness, depth);

  // pcb components
  translate([7.5, -22, 0]) {
    rotate([0,0,-90]) {
      m2_micromod(height_MDT420E02001);
    }
  }

  translate([0,-9,0]) {
    jst_ph_2pin();
  }
}

populated_pcb(pcb_height, pcb_depth);
