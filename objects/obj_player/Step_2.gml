/// @description Insert description here
// You can write your code in this editor
axis_down_prev = (gamepad_axis_value(0,gp_axislv) > 0.5);
if (global.combo > 0)
{
	if (global.combotime > 0)
		global.combotime -= 0.4
	else
	{
		global.combo = 0
		global.combotime = 0	
	}
}
if (room == Initroom)
	vsp = 0
