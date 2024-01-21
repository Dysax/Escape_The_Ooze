// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_adj_player_speed(){
	with(obj_player){
		if (weight > g.last_weight) {
			show_debug_message("Player Weight Increased: " + string(weight))
			var _speed_reduce = round(weight/10);
			move_speed = move_speed - _speed_reduce
			if(move_speed <= 0){
				move_speed = 0
			}
		} else if (weight < g.last_weight) {
			show_debug_message("Player Weight Decreased: " + string(weight))
			var _speed_increase = round(weight/10);
			move_speed = move_speed + _speed_increase
		} else if (weight == 0){
			move_speed = 4
		}
		g.last_weight = weight
	}
}