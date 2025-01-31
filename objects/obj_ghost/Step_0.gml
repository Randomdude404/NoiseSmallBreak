/// @description Insert description here
// You can write your code in this editor
var _do = 0
if (instance_exists(obj_fadeout))
{
	if (obj_fadeout.fadeout == false) && !set && global.timeattack && room != hub_1 && !obj_player.timerend
	{
		_do = 1
		set = 1
	}
}
else
	set = 0
if (keyboard_check_pressed(ord("I"))) || _do
{
	
		var _buffer = buffer_load(room_get_name(room) + "_" + string(obj_player.character) + ".sav");
		if (buffer_exists(_buffer))
		{
				var _json = buffer_read(_buffer, buffer_string)
			    ghostdata = json_parse(_json);
				alarm[1] = 20
				i = 0
				i2 = 0
			
		}
}

if (replaying)
{
	if (i <= 0)
	{
		i = room_speed * 0.1
		i2 += 1
	}
	else
		i -= 1.25
	if (i2 < array_length(ghostdata))
	{
		var _x = ghostdata[floor(i2)][0]
		var _y = ghostdata[floor(i2)][1]
		var _sprite = ghostdata[floor(i2)][2]
		var _xscale = ghostdata[floor(i2)][3]
		x += (_x - x) / 3
		y += (_y - y) / 3
		sprite_index = asset_get_index(_sprite)
		image_speed = 0.4
		image_xscale = _xscale
		
	}
}











