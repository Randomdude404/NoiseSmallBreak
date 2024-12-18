/// @description Insert description here
// You can write your code in this editor
if (switcher && !switched)
{
	with (obj_player)
	{
		character = 1
		scr_characterspr()
		var _x = other.x
		var _y = other.y
		with (obj_orangeswitch)
		{
			if (switcher == 0)
			{
				_x = x
				_y = y
				switched = 1
			}
		}
		x = _x
		y = _y
		movespeed = 0
	}
	switched = 1
}






