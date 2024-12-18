/// @description Insert description here
// You can write your code in this editor
if global.play == 1 && room = room_customlevel
{
	game_restart()
}
else if global.play == 1 && room = room_editor
{
	if global.play == 1
	{
	   global.play = 0
	   with (obj_editor)
	   {
		   filename = "Backup.bblv"
		   scr_loadlevel()
	   }
	}

}




