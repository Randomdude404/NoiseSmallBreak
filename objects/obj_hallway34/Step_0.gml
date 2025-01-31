with instance_place(x, y, obj_doorX)
	other.targetDoor = door;
if room == room_editor
{
	switch targetDoorIndex
	{
	  case 0:
	     targetDoor = "A"
		 break
	   case 1:
	     targetDoor = "B"
		 break
		  case 2:
	     targetDoor = "C"
		 break
		  case 3:
	     targetDoor = "A"
		 targetDoorIndex = 0
		 break
	}
	   
}


if sprite_index = sprmove && backToShuttle != 1
{
	speed2 -= 0.2
}
else if backToShuttle == 1
{
	if (obj_player.character == 0)
		speed2 = 25
	else
		speed2 = 30
}
if sprite_index = sprmove && backToShuttle == 1 && scr_solid(x, y)
{
	if (obj_player.character == 0)
	{
		instance_destroy()
		obj_player.x = x
		obj_player.y = y
		with obj_player
		{
			input_buffer_jump = 0;
			sound_play_3d(sfx_jump, x, y);
			
			//xscale *= -1;
			movespeed = 7
		    xscale = other.image_xscale
			y -= 20
	
			state = states.bounce;
		
			sprite_index = spr_bounce;
			vsp = -16;
		}
		instance_create(x, y, obj_explosion)
		audio_play_sound(sfx_punch, 0, 0)
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_shuttle_parts
			image_index = 0
			vspeed = random_range(-7, 3)
			hspeed = random_range(-7, 7)
		
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_shuttle_parts
			image_index = 1
			vspeed = random_range(-7, 7)
			hspeed = random_range(-7, 7)
		
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_shuttle_parts
			image_index = 2
			vspeed = random_range(-7, 3)
			hspeed = random_range(-7, 7)
		
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_shuttle_parts
			image_index = 3
			vspeed = random_range(-7, 7)
			hspeed = random_range(-7, 7)
		
		}
	}
	else
	{
		if !landed
		{
			obj_player.visible = true
			obj_player.x = x
			obj_player.y = y
			obj_player.sprite_index = spr_playerO_introland
			obj_player.image_index = 0
			obj_player.xscale = 1
			obj_player.state = states.actor
			speed2 = 0
			visible = false
			//instance_create(x, y, obj_explosion)
			audio_play_sound(sfx_punch, 0, 0)
			alarm[1] = 50
			landed = 1
			with (obj_player)
			{
				while (scr_solid(x, y+1))
					y -= 1
			}
		}
	}
}
y += speed2