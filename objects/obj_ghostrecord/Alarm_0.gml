/// @description Insert description here
// You can write your code in this editor
if iswriting
{
	array_push(ghostdata, [obj_player.x, obj_player.y, sprite_get_name(obj_player.sprite_index), obj_player.xscale])
	alarm[0] = room_speed * 0.1
	i += 1
	if i >= 5000
	{
		iswriting = 0
		var _json = json_stringify(ghostdata)
		var _buffer = buffer_create(string_byte_length(_json), buffer_fixed, 1);
		buffer_write(_buffer, buffer_text, _json);
		buffer_save(_buffer, room_get_name(room) + ".sav");
		buffer_delete(_buffer);   
	}
}











