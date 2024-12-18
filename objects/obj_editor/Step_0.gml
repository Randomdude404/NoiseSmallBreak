 /// @description Insert description here
// You can write your code in this editor
// Feather disable GM1017
var bg = layer_get_id("Background")
var bg_id = layer_background_get_id(bg)
layer_background_blend(bg_id, background_tint)
var xx = mouse_x div 32
var yy =mouse_y div 32
if global.play == 1
{
   audio_pause_sound(mu_editor)
   if !audio_is_playing(asset_get_index(song))
   audio_play_sound(asset_get_index(song), 0, 1)
   with (obj_doorX)
		visible = false
}
if global.play == 0
{
	
	audio_stop_sound(asset_get_index(song))
   audio_resume_sound(mu_editor)
   with (obj_doorX)
		visible = true
  
}
if global.play == 0
{
if keyboard_check(ord("X"))
   flipped = -1
else
   flipped = 1
xx = xx*32
yy = yy*32
/*
with all
{
	if object_get_parent(object_index) == obj_editorobject
	{
		if !(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
		{
			if other.touching != 0
				other.touching = 0
			
		}
	    else
		    other.touching = 1
	}
}
*/

var objects2 = ["obj_musichitbox","obj_testhitbox","obj_savehitbox", "obj_roomsizehitbox", "obj_objecttab", "obj_bghitbox", "obj_loadhitbox"]
for (var i = 0; i < 6; i += 1)
{
    if i == 0
	   other.touching = 0
	var i2 = objects2[@ i]
	var object = asset_get_index(i2)
	with object
	{
		if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
		{
		   other.touching = 1
		   break;
		}
		
	}
	    
	
}
if mouse_check_button(mb_left) && !keyboard_check(vk_alt)
{
	if !touching && !touching2
	{
	 if selected != noone
	    selected.image_blend = c_white
	 selected = noone
     with instance_create(xx, yy , select)
	 {
		// if other.select == obj_eggopp
		 //    instance_deactivate_object(obj_eggopp)
		 if place_meeting(x, y, other.select)
		     instance_destroy()
		 image_xscale = other.flipped
		
		 if other.flipped == -1
		    x += 32
	 
	}
	}
}
if keyboard_check_pressed(vk_right)
{

	if selected != noone
	{
		
		if !keyboard_check(vk_shift)
		{
		   selected.x += 32
		}
		else
		{
		   selected.image_xscale += 1
		   if (selected.image_xscale == 0)
				  selected.image_xscale += 1
		} 
	}
}
if keyboard_check_pressed(vk_left)
{

	if selected != noone
	{
		
		if !keyboard_check(vk_shift)
		{
		   selected.x -= 32
		}
		else
		{
		   selected.image_xscale -= 1
		   if (selected.image_xscale == 0)
			  selected.image_xscale -= 1
		}
	   
	}
}
if keyboard_check_pressed(vk_up)
{

	if selected != noone
	{
		
		if !keyboard_check(vk_shift)
		{
		   selected.y -= 32
		}
		else
		{
			if selected.object_index != obj_hallway34
			{
				
					selected.image_yscale -= 1
					if (selected.image_yscale == 0)
						selected.image_yscale -= 1
			}
			
		}
	   
	}
}
if keyboard_check_pressed(vk_down)
{

	if selected != noone
	{
		
	if !keyboard_check(vk_shift)
	{
	   selected.y += 32
	}
	else
	{
		if selected.object_index != obj_hallway34
		{
				selected.image_yscale += 1
				if (selected.image_yscale == 0)
						selected.image_yscale += 1
		}
	    else
		    selected.targetDoorIndex += 1
	   
	}
	   
	}
}

if mouse_check_button(mb_left) && keyboard_check(vk_alt)
{
	var inst = noone;
    if selected != noone
	    selected.image_blend = c_white
	with (all) {
	   if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	      inst = id;
	   }
	}
    if inst != noone
	{
		if inst != obj_noisette && object_get_parent(inst) != obj_editorobject
		{
		   selected = inst
		   selected.image_blend = c_red
		}
	   
	}
}
if keyboard_check_pressed(ord("E"))
{
	background_tint2 = get_string("Set BG Color (see Editor Guide for refrence)", string(background_tint))
	if background_tint2 != "" &&  background_tint2 != undefined &&  background_tint2 != noone
		background_tint = background_tint2
}
if keyboard_check_pressed(ord("Q"))
{
	var _song = get_string("Song?", song)
	if asset_get_index(_song) != -1 && asset_get_index(_song) != noone
	   song = _song
	 else
		var _bruh = get_string("Song doesn't exist.", "")
	
}
if keyboard_check_pressed(ord("R"))
{
	var _width = real(get_string("Room width?", string(room_width)))
	var _height = real(get_string("Room height?", string(room_height)))
	if is_real(_width)
		room_width = _width
	if is_real(_height)
		room_width = _height

}
   if mouse_check_button(mb_right)
    {
	var inst = noone;

	with (all) {
	   if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	      inst = id;
	   }
	}
    if inst != noone && object_get_parent(inst.object_index) != obj_editorobject && inst.object_index != obj_doorA && inst.object_index != obj_player && inst.object_index != obj_noisette && inst.object_index != obj_doorA
	{
	   instance_destroy(inst)
	   selected = noone
	}
	}

if keyboard_check_pressed(ord("L"))
if selectnumber < array_length(objects) - 1
     selectnumber+=1
else
    selectnumber = 0
if keyboard_check_pressed(ord("J"))
if selectnumber >= 0
     selectnumber-=1
else
    selectnumber = 0
	
	/*
if selectnumber = 0
{
   select = obj_solid
   selectsprite = spr_wall
}
if selectnumber = 1
{
   select = obj_slope
   selectsprite = spr_slope
}
if selectnumber = 2
{
   select = obj_eggopp
   selectsprite = spr_eggopp_idle
}
if selectnumber = 3
{
   select = obj_convexslope
   selectsprite = spr_convexslope
}
if selectnumber = 4
{
   select = obj_collect
   selectsprite = spr_collect
   
}
if selectnumber = 5
{
   select = obj_destroyable
   selectsprite = spr_destroyable
}
if selectnumber = 6
{
   select = obj_hallway34
   selectsprite = spr_shuttle
}
if selectnumber = 7
{
   select = obj_doorB
   selectsprite = spr_doorB
}
if selectnumber = 8
{
   select = obj_doorC
   selectsprite = spr_doorC
}
if selectnumber = 9
{
   select = obj_spike
   selectsprite = spr_plug
}
*/


//var objectsprites = ["spr_wall", "spr_slope", "spr_eggopp_idle", "spr_convexslope", "spr_collect", "spr_destroyable", "spr_shuttle", "spr_doorB", "spr_doorC", "spr_plug"]

for (var i = 0; i < array_length(objects)+1; i += 1)
{
	if selectnumber == i
	{
		select = asset_get_index(objects[i])
		selectsprite = object_get_sprite(select)
	}
	
}
/*
for (var i = 0; i < array_length(objectsprites)+1; i += 1)
{
	if selectnumber == i
	{
		selectsprite = asset_get_index(objectsprites[i])
	}
	
}
*/
} 
if room != room_customlevel
{
if keyboard_check_pressed(vk_enter)
{
	
	filename = "Backup.bblv"
	if file_exists(filename)
	   file_delete(filename)
	 scr_savelevel()
	// scr_loadlevel()
   global.play = 1
   obj_player.timer = 0
   obj_player.timerend = 0
   if selected != noone
	    selected.image_blend = c_white
   selected = noone
   obj_player.x = obj_doorA.x
     obj_player.y = obj_doorA.y - 40
}
if keyboard_check_pressed(vk_escape)
{
	if selected != noone
	    selected.image_blend = c_white
	if global.play == 1
	{
	   global.play = 0
	   filename = "Backup.bblv"
	   scr_loadlevel()
	}
	else
	{
		with obj_player
		{
			targetRoom = hub_1
			targetDoor = "A"
		}
			with instance_create(x, y, obj_fadeout)
			{
				
				visible = false
			}
	}
}
}
if keyboard_check_pressed(ord("U"))
{
	filename = get_string("Level Name?", "Level.bblv")
    scr_savelevel()
}

//ui

if global.play == 0
{
if (mouse_check_button_pressed(mb_left)) && (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_savehitbox))
  {
  
	   filename = get_string("Level Name?", "Level.bblv")
      scr_savelevel()
   
  }
if (mouse_check_button_pressed(mb_left)) && (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_testhitbox))
  {
  
	filename = "Backup.bblv"
	if file_exists(filename)
	   file_delete(filename)
	 scr_savelevel()
	// scr_loadlevel()
   global.play = 1
   obj_player.timer = 0
    obj_player.timerend = 0
	if selected != noone
	    selected.image_blend = c_white
    selected = noone
   obj_player.x = obj_doorA.x
     obj_player.y = obj_doorA.y - 40
	
  }
if (mouse_check_button_pressed(mb_left)) && (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_roomsizehitbox))
  {
  
	room_width = real(get_string("Room width?", string(room_width)))
	room_height = real(get_string("Room height?", string(room_height)))
  }
 if (mouse_check_button_pressed(mb_left)) && (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_objecttab))
  {
  obj_objecttab.open *= -1
 
 
  }
  if (mouse_check_button_pressed(mb_left)) && (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_musichitbox))
  {
    var _song = get_string("Song?", song)
	
	if asset_get_index(_song) != -1 && asset_get_index(_song) != noone
	   song = _song
 
 
  }
  if (mouse_check_button_pressed(mb_left)) && (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_bghitbox))
  {
	background_tint2 = get_string("Set BG Color (see Editor Guide for refrence)", background_tint)
	if background_tint2 != "" &&  background_tint2 != undefined &&  background_tint2 != noone
		background_tint = background_tint2
  }
  /*
  filename = get_open_filename_ext("*.bblv", "", game_save_id, "Select level file (.bblv)");
 
	scr_loadlevel()
  */
   if (mouse_check_button_pressed(mb_left)) && (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_loadhitbox))
  {
	filename = get_open_filename_ext("*.bblv", "", game_save_id, "Select level file (.bblv)");
	if filename != undefined && filename != ""
			scr_loadlevel()
 
  }
}



if keyboard_check_pressed(ord("T"))
{
	filename = get_open_filename_ext("*.bblv", "", game_save_id, "Select level file (.bblv)");
	if filename != undefined && filename != ""
			scr_loadlevel()
}