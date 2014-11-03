//ParametricHomework
 

/*module base(height, num) {
     hull(){
		for(i= [0:num]){
			translate([0,0,i])
			cylinder(h = height, r = num-i, $fn = 40);
		}
	}//end hull
 }*/

module shape(num) {
	//hull(){
     for(i= [0:num]){
		translate([sin(360*i/40)*15, cos(360*i/40)*15, 2.9])
		//translate([i,i,1])
		sphere(num-i,$fn = 40);
	}
	//}//end hull
 }

module makeShape(num,qual,trans){
	for(i = [0:num]){
		rotate((i*360)/num)
		translate([0,trans,0])
		shape(6, $fn = qual);
	}//end for
}//end makeShape

//union(){
	//base(15,6);
	//shape(6);
	makeShape(6,15,3);

//}
/*difference(){
hull(){
	for(i = [0:30]){
		translate([0,0,i])
		cylinder(h=1.5, r=(35-i), $fn = 40); 
	}//end for loop
}//end hull

hull(){
	for(i = [0:30]){
		translate([0,0,i])
	
		sphere(20);
	}//end for loop
}
}//end difference*/