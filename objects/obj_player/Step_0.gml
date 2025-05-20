  /// @description Insert description here
// You can write your code in this editor


var _i = global.inputs





switch(state)
{
	
		default :
		{
			state = "iddle"
		}
		break;
		
 		case "iddle" :
		{
			sprite_index = spr_tank_blue
			
			bullet_cooldown()
			scr_direction()
			vspd = lengthdir_y(spd,dir)
			hspd = lengthdir_x(spd,dir)
			image_angle = dir + 90
			shoot()

		
		
		}
		
		break;
 		case "shoot" :
		{
			sprite_index = spr_tank_blue_shoot
			
			
			scr_direction()
			vspd = lengthdir_y(spd,dir)
			hspd = lengthdir_x(spd,dir)
			image_angle = dir + 90
			
			if(image_index>= image_number - 1)
			{
				state = "iddle"
				
			}
		
		}
		
		break;
			  	
}




if(_i.left and _i.right) hspd = 0;		
if(_i.down and _i.up) vspd = 0;







