// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_adj_player_speed(){
	with(obj_player){
		//check if player weight has changed
		if (weight != g.last_weight) {
			//reset movement speed to default
			move_speed = 4
			//recalculate speed reduction by weight value
			var _speed_reduce = round(weight/10);
			//adjust movement speed
			move_speed = move_speed - _speed_reduce
			//set speed to 0 if the number is less than zero
			if(move_speed <= 0){
				move_speed = 0
			}
			//set global last weight variable to new current weight
			g.last_weight = weight
		}
	}
}