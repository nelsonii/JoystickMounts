include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>
use <BOSL/masks.scad>

$fn=60; //circle smoothness

wiggle=0.5;

main();

  //, edges=EDGES_TOP + EDGES_Z_ALL
  
  bottom = 19.5;
  height = 27;
  stickX = 30;
  stickY = 40;
  
module main(){
  difference(){
    color("lime") up(height/2) cuboid([stickX+10, stickY+10, height], fillet=2, edges=EDGES_TOP + EDGES_Z_ALL); // outer shell
    color("green") up(bottom) cuboid([stickX+wiggle, stickY+wiggle, 20]); // cutout inner space
    color("blue")  up(bottom) cuboid([stickX/2, 80, 20]); // cutouts for usb & save print time
    //color("blue") up(bottom) cuboid([80, stickY/2, 20]); //cutout to save print time
    color("pink") #cylinder(h=10, d=8); //hole for t-nut
    color("blue") up(8) cylinder(h=10, d=20); // countersink for t-nut
    color("orange") forward(8) #cylinder(h=10, d=3); // t-nut tab
    color("orange") back(8) #cylinder(h=10, d=3); // t-nut tab
    color("orange") left(8) #cylinder(h=10, d=3); // t-nut tab
    color("orange") right(8) #cylinder(h=10, d=3); // t-nut tab
  }
}  
