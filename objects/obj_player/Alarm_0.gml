 /// @description Insert description here
// You can write your code in this editor
if timerend == 0
{
	alarm[0] = room_speed * 0.1
}

else
{
    audio_play_sound(sfx_finish, 0, 0)
	exit;
}
if !instance_exists(obj_pausemenu)
	timer += 0.1

if losehp == 0
{
if global.level == "junkbeach"
{
if timer >= 59.9  
	{
	if global.timeattack
	{
		losehp = 1
		inv = 0
		alarm[1] = room_speed * 0.1
	}
	}
}
else 
	{
	if timer >= 230
	{
	if global.timeattack
	{
		losehp = 1
		inv = 0
		alarm[1] = room_speed * 0.1
	}
	}	
	}
}