/// @description Insert description here
// You can write your code in this editor
if global.play == 1
    visible = 0
else
   visible = 1
if open = 1
{
	var _row = 0
	var _y_i = 0
	obj_editor.touching2 = 0
	for (var i = 0; i <= objects; i++)
	{
		if (i mod 10 == 0 && i != 0)
		{
			_row += 1
			_y_i = 0
		}
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),x+_row*64, y+50+64*_y_i, xx+_row*64, yy+64*_y_i))
			{
				if mouse_check_button(mb_left)
					 obj_editor.selectnumber = i
				obj_editor.touching2 = 1
			}
		_y_i += 1;
	}
}
else
	obj_editor.touching2 = 0





