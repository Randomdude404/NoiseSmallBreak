// Feather disable once GM1034
// Feather disable once GM1033
live_auto_call;


if (global.fullscreen == 0)
		gameframe_set_fullscreen(global.fullscreen)
	else
		gameframe_set_fullscreen(2)
window_set_showborder(!global.fullscreen)
var target = -4
   
if room == room_editor && global.play != 1
{
	target = obj_doorA;
	if instance_exists(target)
{
	
	var camx = target.x - CAMW / 2 + _camx;
	var camy = target.y - CAMH / 2 + _camy;
}
   var camspeed = 0
	if keyboard_check(vk_shift)
	    camspeed = 4
	if keyboard_check(ord("D"))
	   _camx += 7+camspeed
	if keyboard_check(ord("A"))
	   _camx -= 7+camspeed
	if keyboard_check(ord("W"))
	   _camy -= 7+camspeed
	if keyboard_check(ord("S"))
	   _camy += 7+camspeed
	if keyboard_check(ord("O"))
		{
	   _camh += 7.4+camspeed
	   _camw += 15+camspeed
	   
		}
	  
	if keyboard_check(ord("P"))
		{
	   _camh -= 7.4+camspeed
	   _camw -= 15+camspeed
	   
		}
		if instance_exists(target)
{
	camera_set_view_pos(view_camera[0], camx, camy);
	camera_set_view_size(view_camera[0],1280 + _camw,720 + _camh)
}
}
else
{
	target = global.mainplayer;
	
	if room == hub_1
	{
		target = obj_planetpointer
		if instance_exists(target)
		{
			
			
			_camx += ((target.x - (CAMW/2)) - _camx) / 6
			_camy += ((target.y - (CAMH/2)) - _camy) / 6
	
			camera_set_view_size(view_camera[0],(1280*zoom) ,(720*zoom))
		    if shake = 0
				camera_set_view_pos(view_camera[0], _camx, _camy);
			else
			   camera_set_view_pos(view_camera[0], _camx + random_range(shakestrength * -1, shakestrength), _camy +random_range(shakestrength * -1, shakestrength));
		}
	}
    else
	{
	if instance_exists(target)
	{
		var camx = target.x - CAMW / 2;
		var camy = target.y - CAMH / 2;
		camera_set_view_size(view_camera[0],1280 ,720 )
		if target.object_index == obj_player
		{
			chargecam = Approach(chargecam, target.movespeed * target.xscale * 4, 2);
			if target.state == states.jump && target.mach2 >= mach2_time && target.vsp < 0 && target.sprite_index != target.spr_bounce
				flycam = Approach(flycam, 100, 2);
			else
				flycam = Approach(flycam, -50, target.vsp > 0 ? 4 : 2);
		
			camx += chargecam;
			camy += flycam;
		}
	
		if room != desertbus
		camx = clamp(camx, 0, room_width - CAMW);
	
	
		camy = clamp(camy, 0, room_height - CAMH);
		if !(obj_player.hp <= 0)
		{
	    if shake = 0
			camera_set_view_pos(view_camera[0], camx, camy);
		else
		   camera_set_view_pos(view_camera[0], camx + random_range(shakestrength * -1, shakestrength), camy +random_range(shakestrength * -1, shakestrength));
		}
	}
	   if global.coop 
	   {
		   camera_set_view_size(view_camera[0],1280 + _camw,720 )
		   if global.mainplayer == obj_player
		   {
		   with obj_player2
		   {
			   other._camh = 0
				   other._camw = 0
			   if distance_to_object(obj_player) > 500 
			   {
			   
				   other._camh = distance_to_object(obj_player) - 500
				   other._camw = distance_to_object(obj_player) - 500
			   }
		   }
		   }
		   else
		   {
			     with obj_player
		   {
			   other._camh = 0
				   other._camw = 0
			   if distance_to_object(obj_player2) > 500 
			   {
			   
				   other._camh = distance_to_object(obj_player2) - 500
				   other._camw = distance_to_object(obj_player2) - 500
			   }
		   }
		   }
		   }
	}
   }
if (global.discord_initialized)
{
	np_setpresence_more("Small image text", "Large image text", false);
	var _levelname = ""
	if (global.level == "junkbeach")
		_levelname = "in Junk Beach"
	if (global.level == "moonlight")
		_levelname = "in Moonlight Madness"
	if (room == hub_1)
		_levelname = "in Level Select"
	np_setpresence(_levelname, "", "spr_player_idle", "spr_player_idle");
}
view_wport[0] = 224;
view_hport[0] = 160;
