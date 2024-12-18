 /// @description Insert description here
// You can write your code in this editor
draw_self()
//draw_text(x, y-50, place_meeting(x, y+2, obj_solid) || place_meeting(x, y+2, obj_platform))
if (thingy == 1 && state == 0)
{
	var _draw = 0
	with (obj_eggopp_detectionbox)
	{
		if place_meeting(x, y, obj_player) && target == other.id
		{
			if !collision_line(x, y-5, obj_player.x, obj_player.y-5, obj_solid, false, false)
			{
				_draw = 1
			}
		}
	}
	if !(about_to_detect)
		draw_sprite(spr_spotted, image_index, x, y-120)
	else if _draw
		draw_sprite(spr_reallyspotted, image_index, x, y-120)
}


