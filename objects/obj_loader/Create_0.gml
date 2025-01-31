/// @description Insert description here
// You can write your code in this editor
if (variable_global_exists("skiploading"))
{
	if global.firsttime == 1
		room_goto(testroom_1);
	else
	    room_goto(hub_1)
	global.play = 1
}
else
{
	tex_array = texturegroup_get_textures("Default");
	i = 0
	alarm[0] = irandom_range(10, 50)
	finished = 0
}













