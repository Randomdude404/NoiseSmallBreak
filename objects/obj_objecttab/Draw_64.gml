/// @description Insert description here
// You can write your code in this editor
draw_self()

if open == 1
{
	var _row = 0
	var _y_i = 0
	var sprites = []
	var _objects = obj_editor.objects
	for (var i = 0; i < array_length(_objects); i++)
	{
		if (object_get_sprite(asset_get_index(_objects[@ i])) != -1)
			array_push(sprites, object_get_sprite(asset_get_index(_objects[@ i])))
	}
	//show_debug_message(sprites)
	for (var i = 0; i < array_length(sprites); i++)
	{
		if (i mod 10 == 0 && i != 0)
		{
			_row += 1
			_y_i = 0
		}
		var _y = 50+64*_y_i
		var _yy = 64*_y_i
		draw_set_color(c_black)
		draw_rectangle(x+_row*64, y+_y, xx+_row*64, yy+_yy, false)
		draw_set_color(c_white)
		draw_rectangle(x+_row*64, y+_y, xx+_row*64, yy+_yy, true)
		
		var _xscalesmall = 1
		var _yscalesmall = 1
		if sprite_get_width(array_get(sprites, i)) > 64
		{
			_xscalesmall = 2
		}
		if sprite_get_height(array_get(sprites, i)) > 64
		{
			_yscalesmall = 2
		}
		draw_sprite_ext(array_get(sprites, i),0,xx/2+_row*64, yy/2+64*_y_i, 1/_xscalesmall, 1/_yscalesmall, image_angle, image_blend, image_alpha)
		_y_i += 1
	}
	/*
	thingy = 0
	draw_set_color(c_black)
	draw_rectangle(x, y+50, xx, yy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50, xx, yy, true)
	draw_sprite(spr_wall,0,xx/2, yy/2)
  thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_slope,0,xx/2, yy/2+64*thingy)
	 thingy += 1	
	draw_set_color(c_black)
	draw_rectangle(x, y+50+128, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_eggopp_idle,0,xx/2, yy/2+64*thingy)
	 thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_convexslope,0,xx/2, yy/2+64*thingy)
	 thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_collect,0,xx/2, yy/2+64*thingy)
	 thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_destroyable,0,xx/2, yy/2+64*thingy)
	 thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite_ext(spr_shuttle,0,xx/2, yy/2+64*thingy+10, 0.5, 0.5, image_angle, image_blend, image_alpha)
	 thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_doorC,0,xx/2, yy/2+64*thingy)
	 thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_doorB,0,xx/2, yy/2+64*thingy)
	 thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x, y+50+64*thingy, xx, yy+64*thingy, true)
	draw_sprite(spr_plug,0,xx/2, yy/2+64*thingy)
	// thingy += 1
	draw_set_color(c_black)
	draw_rectangle(x+64, y+50+64*thingy, xx+64, yy+64*thingy, false)
	draw_set_color(c_white)
	draw_rectangle(x+64, y+50+64*thingy, xx+64, yy+64*thingy, true)
	draw_sprite(spr_hallway,0,xx/2+64, yy/2+64*thingy)
	*/
	
}



