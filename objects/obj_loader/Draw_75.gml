draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle(0, 0, 2000, 2000, 0)
draw_healthbar(0, 705, 1280, 720, (i*(100))/array_length(tex_array), c_black, c_white, c_white, 0, false, false)

image_speed = 0.3
draw_sprite(spr_loadingscreen_noise_outline, image_index, 1100, 512)
if (global.firsttime == 0)
	draw_sprite(spr_loadingscreen_noisette_outline, image_index, 891, 555)
ini_open("SaveData.ini")
var MrOrange_unlocked = ini_read_real("MrOrange", "unlocked", 0)
if (MrOrange_unlocked)
	draw_sprite(spr_loadingscreen_joey_outline, image_index, 674, 489)
ini_close()
/// @description Insert description here
// You can write your code in this editor














