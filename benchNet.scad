//////////////////////////////////////////////////////
// Jakub Loudát - jakub@loudat.cz | TW:@jakubloudat //
//  Benchnet  //  License: CC BY-SA  //  20220109   //
//             www.JLcreativeStudio.cz              //
//////////////////////////////////////////////////////

layer = 0.2; // 3D print matters
perimeter = 0.43; // 3D print matters
width = 295;
height = 160;
bw_height = 2; // x times layer
bw_width = 2 // x times perimeter
sk_height = 1; // x times layer
sk_width = 1; // x times perimeter
sk_space = 3; // x times perimeter
dividing_parts = 29;
step = width / (dividing_parts + 1) ;

//binding wire
translate([-perimetr,0,0]){ //centering
   for (i=[step:step:width-step]) {
	   translate([i,0,0]) cube([bw_width * perimeter, height, bw_height * layer]);
   }
}
//skewers
for (i=[0:perimetr * sk_space:height]) {
    translate([0,i,0]) cube([width, sk_width * perimeter, sk_height * layer]);
}
