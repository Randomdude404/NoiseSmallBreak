/// @description Insert description here
// You can write your code in this editor

if obj_player.key_right && key_right == false && moonlightUnlocked != "None"
{
		   key_right = true
		   global.selectedlevel = (global.selectedlevel == 0 ? 1 : 0)
		   with obj_planetpointer
		   {
			   if global.selectedlevel == 1
			   {
				  speed = 9.5
			   }
			   if global.selectedlevel == 0
			   {
				  speed = -9.5
			   }
		   }
	   
} else if moonlightUnlocked == "None" && obj_player.key_right && key_right == false
{
	key_right = true
	with (instance_create(x, y, obj_popuptext))
	{
		text = "BEAT JUNK BEACH FIRST TO ACCESS THE SECOND LEVEL"
		array_push(global.textList, id)
	}
		
	
}
	if !obj_player.key_right
	   key_right = false
   
	if obj_player.key_left == -1 && key_left == false && moonlightUnlocked != "None"
	   {
		   key_left = true
		   global.selectedlevel = (global.selectedlevel == 0 ? 1 : 0)
		   with obj_planetpointer
		   {
			   if global.selectedlevel == 1
			   {
				  speed = 9.5
			   }
			   if global.selectedlevel == 0
			   {
				  speed = -9.5
			   }
		   }
	   
	   }
 
	if obj_player.key_left != -1
	   key_left = false

switch global.selectedlevel
{
	case 0:
		selectedObj = obj_planet1
		
	break
	case 1:
		selectedObj = obj_planet2
	break
}
if zoom < 0.6 && selectedObj = obj_planet1
{
	zoom += 0.0035
}
if zoom > 0.5 && selectedObj = obj_planet2
{
	zoom -= 0.0035
}
obj_camera.zoom = zoom
if obj_player.key_jump
{
	
	var _targetRoom = (global.selectedlevel == 0 ? testroom_1 : moonlight_1)
	if (obj_player.character == 1 && _targetRoom = testroom_1 && !MrOrange_unlocked)
	{
		_targetRoom = testroom_mrorange
	}
	with instance_create(obj_player.x, obj_player.y, obj_hallway)
	{
		
		targetRoom = _targetRoom
		targetDoor = "A"
	}
}
if obj_player.key_down2
{
	var _targetRoom = rm_changelog
	with instance_create(obj_player.x, obj_player.y, obj_hallway)
	{
		
		targetRoom = _targetRoom
		targetDoor = "A"
	}
}

if (obj_player.key_up) && !key_up && MrOrange_unlockable
{
	key_up = 1
	obj_player.character = (obj_player.character == 0 ? 1 : 0)
	with (obj_player)
		scr_characterspr()
}
if (obj_player.key_up) && !key_up && !MrOrange_unlockable
{
	key_up = 1
	with (instance_create(x, y, obj_popuptext))
	{
		text = "BEAT MOONLIGHT MADNESS TO UNLOCK MR. ORANGE"
		array_push(global.textList, id)
	}
}

if !obj_player.key_up
	   key_up = false
if (keyboard_check_pressed(ord("O")))
{
	var _i = 0
	while (room_exists(_i))
	{
		if file_delete(room_get_name(_i) + "_0" + ".sav")
		{
			with (instance_create(x, y, obj_popuptext))
			{
				text = "DELETED " + room_get_name(_i) + "_0" + ".sav"
				array_push(global.textList, id)
			}
		}
		else
		{
			with (instance_create(x, y, obj_popuptext))
			{
				text = "FAILED TO DELETE " + room_get_name(_i) + "_0" + ".sav"
				array_push(global.textList, id)
			}
		}
		_i += 1
	}
}