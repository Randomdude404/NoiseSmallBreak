if !audio_is_playing(mu_secret)
	audio_play_sound(mu_secret, 0, 1)
audio_stop_sound(mu_orange)
audio_stop_sound(mu_placeholder)
obj_player.timerend = 0
global.skiploading = 1