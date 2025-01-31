live_auto_call;

if !hp <= 0 && !global.trailermode && !(room == room_editor && global.play == 0) && !instance_exists(obj_pausemenu) && room != hub_1 && room != rm_changelog
{
	for(var i = 0; i < max(hp, 4); i++)
	{	
		var _y = (sin(sintimer+i)*5)-5
		draw_sprite_ext(spr_health_indicators, i, 55 + 78 * i, _y, 1, 1, 0, i >= hp ? c_black : c_white, 1)
	};
	
	//draw_healthbar(32, 112, 288, 144, (movespeed / 13) * 100, c_purple, c_purple, c_purple, 0, false, false);
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0, room_width,room_height, false);
	
	draw_set_alpha(1);
	draw_healthbar(19, 124, 310, 158, (movespeed / 16) * 100, c_white, c_white, c_white, 0, false, false);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite(spr_speedbar_fill, 0, 192, 128);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	draw_sprite(spr_speedbar_bar, 0, 192, 128)
	
	var _sprite = spr_player_idle
	var _noiseicon_x = (movespeed / 16) * 256
	if _noiseicon_x > 256
	   _noiseicon_x = 256
	if lasthealthbar_x < _noiseicon_x
		_sprite = spr_mach3
	if lasthealthbar_x > _noiseicon_x
		_sprite = spr_crouchslip
	if lasthealthbar_x == _noiseicon_x && _noiseicon_x != 0
		_sprite = spr_mach3
	else if _noiseicon_x == 0
		_sprite = spr_idle
	lasthealthbar_x = _noiseicon_x
	draw_sprite(_sprite, noiseicon_speed, 32 + _noiseicon_x, 112)
	draw_sprite(spr_teacup, 0, 128+42, 152)
	draw_set_font(fnt_console_big)
	draw_set_color(c_white)
	var _maxtime = 0
	if (global.level == "junkbeach")
		_maxtime = 50
	else
		_maxtime = 220
	if global.timeattack
	{
		   if timer >= _maxtime
		   draw_set_color(c_red)
	}

	if timerend == 1
	   draw_set_color(c_green)
	if !(global.timeattack)
		draw_text(640, 10, timer);
	else
		draw_text(640, 10, string(timer)+"/"+string(_maxtime));
	draw_set_color(c_white)
	draw_set_font(collectfont)
	//draw_text(150, 145, global.points);
	draw_set_halign(fa_center)
	draw_text(150+20, 185, string(global.collect) + "/20");
	draw_set_halign(fa_left)
	//draw_sprite_ext(spr_teacup,0, 32 + (78 * (hp +1)), 16, 1.2, 1.2, image_angle, image_blend, 1)
	
	var _shakex = random_range(-1, 1) * (50 - global.combotime) / 10
	var _shakey = random_range(-1, 1) * (50 - global.combotime) / 10
	var _shake = 0
	if (global.combotime < 50)
		_shake = 1
	if (!_shake)
	{
		_shakex = 0
		_shakey = 0
	}
	
	if (global.combo > 0)
	{
		//draw_healthbar(1088+_shakex, 96+_shakey, 1152+_shakex, 128+_shakey, global.combotime, c_black, c_white, c_white, 0, 1, 1)
		draw_set_halign(fa_center)
		global.combotime = clamp(global.combotime, 0, 100)
		var _i = (global.combotime / 100) * 4
		draw_sprite(spr_cookie, _i, 1056+_shakex, 96+_shakey)
	
		draw_set_font(combofont)
		if (obj_camera.shake)
			draw_text(1056 + random_range(obj_camera.shakestrength * -1, obj_camera.shakestrength), 64+ random_range(obj_camera.shakestrength * -1, obj_camera.shakestrength), "X"+string(global.combo))
		else
			draw_text(1056, 64, "X"+string(global.combo))
	}
	draw_set_halign(fa_left)
}
if global.timeattack
{
	draw_set_font(fnt_console_big)
	draw_text(1100, 0, "TIME ATTACK");
	
}
if controllerConnected
{
	draw_set_font(fnt_console_big)
	draw_text(1040, 690, "CONTROLLER CONNECTED");
	
}