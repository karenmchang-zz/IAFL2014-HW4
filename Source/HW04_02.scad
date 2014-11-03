//ParametricHomework
 
/*module shape(num) {
	//hull(){
     for(i= [0:num]){
		translate([sin(360*i/40)*15, cos(360*i/40)*15, 2.9])
		//translate([i,i,1])
		sphere(num-i);//,$fn = 40);
	}
	//}//end hull
 }*/

module makeShape(num,qual,trans,sh){
	for(i = [0:num]){
		rotate((i*360)/num, i*360/num)
		translate([0,trans,0])
		for(i= [0:sh]){
			translate([sin(360*i/40)*15, cos(360*i/40)*15, 2.9])
			//translate([i,i,1])
			sphere(sh-i);//,$fn = 40);
		}
		//shape(6, $fn = qual);
	}//end for
}//end makeShape

//makeShape(9,3,5); 

//makeShape(30,7,50,6); //first cap
makeShape(13,50,55,6); //second cap
//makeShape(25,3,40,6);//third cap