/// @description Insert description here
// You can write your code in this editor
//draw_text(0, 0, selectedObj)


if (obj_player.character == 0)
	draw_sprite(spr_player_idle, 0, 1180, 100)
else
	draw_sprite(spr_playerO_idle, 0, 1180, 100)
draw_sprite(spr_uparrow, current_time/500, 1080, 100)
draw_set_font(fnt_console_big)
draw_text(32, SCREEN_HEIGHT-64, "CREDITS")

draw_sprite_ext(spr_uparrow, current_time/500, 164, SCREEN_HEIGHT-64, 1, 1, 180, image_blend, 1)


