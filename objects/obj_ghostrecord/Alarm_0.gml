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
		clipboard_set_text(json_stringify(ghostdata, 1))
	}
}











