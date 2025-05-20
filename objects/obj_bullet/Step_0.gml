/// @description Insert description here
// You can write your code in this editor
var _wall = global.tl_colide

if(place_meeting(x,y,_wall))
{
	instance_destroy()
	scr_explosion_fx()
}