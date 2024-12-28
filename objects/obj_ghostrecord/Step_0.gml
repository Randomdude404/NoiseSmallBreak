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
		clipboard_set_text(json_stringify(ghostdata, 1))
	}
}












