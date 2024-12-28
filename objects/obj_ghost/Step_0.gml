/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("I")))
{
	var _ghostdata = get_string("yes", "")
	if is_string(_ghostdata)
		ghostdata = json_parse(_ghostdata)
	replaying = 1
	i = 0
	i2 = 0
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











