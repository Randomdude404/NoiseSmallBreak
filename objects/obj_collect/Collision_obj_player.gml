if ++global.collect >= 20 && obj_player.hp < 7
{
	global.collect = 0;
	other.hp++;
}
if global.collect <= 20
	global.points += 10
instance_destroy();
if (global.combo > 0)
{
	global.combotime += 20
	global.combotime = clamp(global.combotime, 0, 100)
}
