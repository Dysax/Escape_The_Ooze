/// @description 
animationTimer--;
if(animationTimer <= 0){
	var _inst1 =instance_create_layer(x,y,"Instances",obj_electric_attack)
	var _inst2 =instance_create_layer(x,y,"Instances",obj_electric_attack)
	var _inst3 =instance_create_layer(x,y,"Instances",obj_electric_attack)
	var _inst4 =instance_create_layer(x,y,"Instances",obj_electric_attack)
	with(_inst1) {
		speed = 8
		direction = point_direction(x,y,x+1,y)
	}
	with(_inst2) {
		speed = 8
		direction = point_direction(x,y,x,y+1)
	}
	with(_inst3) {
		speed = 8
		direction = point_direction(x,y,x-1,y)
	}
	with(_inst4) {
		speed = 8
		direction = point_direction(x,y,x,y-1)
	}
	instance_destroy()
}