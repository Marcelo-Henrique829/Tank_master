// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//inputs
global.inputs = {
	
	//teclas pressionadas
	left_p:false,	
	right_p:false,	
	up_p:false,	
	down_p:false,
	
	left:false,	
	right:false,	
	up:false,	
	down:false,
	shoot:false

}
global.inputs_2 = {
	
	//teclas pressionadas
	left_p:false,	
	right_p:false,	
	up_p:false,	
	down_p:false,
	
	left:false,	
	right:false,	
	up:false,	
	down:false,
	shoot:false

}



function scr_inputs(_bool)
{
	if(!_bool) return;
	
	var _i = global.inputs
	
	_i.left = keyboard_check(ord("A"))
	_i.right = keyboard_check(ord("D"))
	_i.up  = keyboard_check(ord("W"))
	_i.down = keyboard_check(ord("S"))
	_i.shoot = keyboard_check_pressed(ord("J"))
	
	
	_i.left_p = keyboard_check_pressed(ord("A"))
	_i.right_p = keyboard_check_pressed(ord("D"))
	_i.up_p  = keyboard_check_pressed(ord("W"))
	_i.down_p = keyboard_check_pressed(ord("S"))

}


function scr_inputs_2(_bool)
{
	if(!_bool) return;
	
	var _i = global.inputs_2
	
	_i.left = keyboard_check(vk_left)
	_i.right = keyboard_check(vk_right)
	_i.up  = keyboard_check(vk_up)
	_i.down = keyboard_check(vk_down)
	_i.shoot = keyboard_check_pressed(vk_rshift)
	
	
	_i.left_p = keyboard_check_pressed(vk_left)
	_i.right_p = keyboard_check_pressed(vk_right)
	_i.up_p  = keyboard_check_pressed(vk_up)
	_i.down_p = keyboard_check_pressed(vk_down)


}