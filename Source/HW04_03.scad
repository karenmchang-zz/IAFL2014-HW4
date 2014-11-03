//Parametric Homework
module makeShape(num,qual,trans,sh){
	for(i = [0:num]){
		rotate((i*360)/num, i*360/num)
		translate([0,trans,0])
		for(i= [0:sh]){
			translate([sin(360*i/40)*15, cos(360*i/40)*15, 2.9])
			sphere(sh-i, $fn = qual);
		}//end inside for
	}//end for
}//end makeShape


//makeShape(30,7,50,6); //first cap
//makeShape(13,50,55,6); //second cap
//makeShape(25,3,40,6);//third cap
makeShape(25,3,40,10);//fourth cap