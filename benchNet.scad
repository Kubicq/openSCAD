//////////////////////////////////////////////////////
// Jakub Loudát - jakub@loudat.cz | TW:@jakubloudat //
//  Benchnet  //  License: CC BY-SA  //  20220109   //
//             www.JLcreativeStudio.cz              //
//////////////////////////////////////////////////////

layer = 0.2; // 3D print matters
perimetr = 0.43; // 3D print matters
width = 295;
height = 160;
dividing_parts = 29;
step = width / (dividing_parts + 1) ;

//binding wire
translate([-perimetr,0,0]){ //centering
   for (i=[step:step:width-step]) {
	   translate([i,0,0]) cube([2 * perimetr, height, 2 * layer]);
   }
}
//skewers
for (i=[0:perimetr * 3:height]) {
    translate([0,i,0]) cube([width, perimetr, layer]);
}