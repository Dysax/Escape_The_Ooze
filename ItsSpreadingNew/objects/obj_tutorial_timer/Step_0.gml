/// @description Insert description here
// You can write your code in this editor
background_alpha -= .2;

with (rm_tutorial) 
{
	if (background_alpha < 0){
		background_alpha = 0;
	}
	background_layer = layer_background_get_id("Background")
	background_layer.image_alpha = background_alpha;
	
}


