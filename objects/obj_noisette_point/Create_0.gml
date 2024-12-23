image_alpha = 0.5;
state = 0;
player = noone;
mask_index = spr_player_mask;
if (room == room_editor) && global.play == 0
	exit;
if (room == room_customlevel) && global.play == 0
	exit;
while !scr_solid(x, y + 1)
	y++;
while scr_solid(x, y)
	y--;
