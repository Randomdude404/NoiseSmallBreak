if !audio_is_playing(mu_placeholder)
	audio_play_sound(mu_placeholder, 0, 1)
audio_stop_sound(mu_orange)
audio_stop_sound(mu_secret)
if obj_player.timer == 0
	obj_player.alarm[0] = room_speed * 0.1
ini_open("SaveData.ini");
ini_write_real("MrOrange", "unlocked", 1)
ini_close()
obj_player.character = 0
with (obj_player)
	scr_characterspr()
