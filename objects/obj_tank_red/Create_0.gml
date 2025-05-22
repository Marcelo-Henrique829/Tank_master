    /// @description Insert description here
// You can write your code in this editor


//image_xscale = 0.15
//image_yscale = 0.15

window_set_cursor(cr_none)
state = "iddle"
previous_state = "";
tank_id = "red"


global.tl_colide  = layer_tilemap_get_id("tl_wall")

 #region movimentação
	hspd = 0;
	vspd = 0;
	spd = 0;
	dir = 0;
	dir_state = "none"
	def_spd = 10;
	last = vk_nokey
	inputs_bool = 1;

#endregion



#region shoot




shoot_time = {
	
	def_cooldown: 20,
	cooldown   : 20,
	can_shoot  : true,
	
}

shoot = function()
{
	var _i = global.inputs_2
	
		if(_i.shoot and shoot_time.can_shoot)
			{
				
				var _bullet = instance_create_layer(x,y,layer,obj_bullet)
				_bullet.bullet_id = tank_id
				_bullet.speed = 30
				_bullet.direction = dir
				_bullet.image_angle = dir
				
				state = "shoot"	
				image_index = 0
				
				shoot_time.can_shoot = 0
				shoot_time.cooldown = shoot_time.def_cooldown
			}
}

bullet_cooldown = function()
{
	if(shoot_time.cooldown>0)
	{
		shoot_time.cooldown--
	}
	else
	{
		shoot_time.can_shoot = 1
	}
	
}

shot = function()
{
	var _inst = instance_place(x, y, obj_bullet);

	if (_inst != noone and _inst.bullet_id != tank_id)
	{
		
		var _explosion = instance_create_layer(x,y,"inst_fx",obj_explosion_efx_2)
		global.shake = 30
	    state = "destroy";
		
	}
}

#endregion





