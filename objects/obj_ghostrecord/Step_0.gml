/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("U")))
{
	if !(iswriting)
	{
		iswriting = 1
		ghostdata = []
		alarm[0] = room_speed * 0.1
	}
	else
	{
		iswriting = 0
		var _json = json_stringify(ghostdata)
		var _buffer = buffer_create(string_byte_length(_json), buffer_fixed, 1);
		buffer_write(_buffer, buffer_text, _json);
		buffer_save(_buffer, room_get_name(room) + ".sav");
		buffer_delete(_buffer);   
	}
}
if (instance_exists(obj_fadeout))
{
	if (obj_fadeout.fadeout == false) 
	{
		if (!(set))
		{
			if (room != hub_1 && global.timeattack)
			{
				set = 1
				set2 = 0
				iswriting = 1
				ghostdata = []
				alarm[0] = room_speed * 0.3
			}
		}
	}
	else
	{
		if (!(set2))
		{
			set = 0
			set2 = 1
			iswriting = 0
			var _json = json_stringify(ghostdata)
			var _buffer = buffer_create(string_byte_length(_json), buffer_fixed, 1);
			buffer_write(_buffer, buffer_text, _json);
			var _do = 1
			var _buffer2 = buffer_load(room_get_name(room) + "_" + string(obj_player.character) + ".sav");
			if (buffer_exists(_buffer2))
			{
					var _json2 = (buffer_read(_buffer2, buffer_string))
					if (string_length(_json) > string_length(_json2))
					   _do = 0
			
			}
			if (obj_player.targetRoom == obj_player.lastTargetRoom)
			{
				_do = 0
				show_debug_message("good job")
			}
			show_debug_message(string(obj_player.targetRoom))
			show_debug_message(string(obj_player.lastTargetRoom))
			
			if (_do)
				buffer_save(_buffer, room_get_name(room) + "_" + string(obj_player.character) + ".sav");
			buffer_delete(_buffer);  
		}
		
		
	}
}











