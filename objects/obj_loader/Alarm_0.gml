/// @description Insert description here
// You can write your code in this editor
if (i < array_length(tex_array))
{
	if texture_is_ready(tex_array[i])
	{
	     texture_prefetch(tex_array[i]);
		 i += 1
	}
	if !(obj_player.key_jump2)
		alarm[0] = irandom_range(10, 50-i)
	else
	    alarm[0] = 10
	
}
else
{
	if global.firsttime == 1
		room_goto(testroom_1);
	else
	    room_goto(hub_1)
	global.play = 1
}












