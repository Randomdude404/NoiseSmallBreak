/// @description Insert description here
// You can write your code in this editor
if (fade)
	alpha -= 0.1
if (alpha <= 0)
{
	instance_destroy()
	if (array_contains(global.textList, id))
	{
		array_delete(global.textList, array_get_index(global.textList, id), 1)
	}
}







