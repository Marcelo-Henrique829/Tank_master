  /// @description Insert description here
// You can write your code in this editor


var _i = global.inputs_2


shot()


switch(state)
{
	
		default :
		{
			state = "iddle"
		}
		break;
		
 		case "iddle" :
		{
			sprite_index = spr_tank_red
			
			bullet_cooldown()
			scr_direction2()
			vspd = lengthdir_y(spd,dir)
			hspd = lengthdir_x(spd,dir)
			image_angle = dir + 90
			shoot()
			shot()

		
		
		}
		
		break;
 		case "shoot" :
		{
			sprite_index = spr_tank_red_shoot
			
			
			scr_direction2()
			vspd = lengthdir_y(spd,dir)
			hspd = lengthdir_x(spd,dir)
			image_angle = dir + 90
			
			if(image_index>= image_number - 1)
			{
				state = "iddle"
				
			}
		
		}
		
		break;
		
		case  "destroy":
		{
			instance_destroy()
		}
		break;
			  	
}




if(_i.left and _i.right) hspd = 0;		
if(_i.down and _i.up) vspd = 0;







