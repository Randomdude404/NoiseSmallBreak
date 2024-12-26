/// @description Update NekoPresence so async events will execute.
if (global.discord_initialized)
	{
	var _charactertext = ""
	if (obj_player.character == 0)
		_charactertext = "Playing as The Noise"
	else
		_charactertext = "Playing as Mr. Orange"
	np_setpresence_more(_charactertext, "playing Noise's Small Break", false);
	var _levelname = ""
	if (global.level == "junkbeach")
		_levelname = "in Junk Beach"
	if (global.level == "moonlight")
		_levelname = "in Moonlight Madness"
	if (room == hub_1)
		_levelname = "in Level Select"
		
	var _characterimage = ""
	if (obj_player.character == 0)
		_characterimage = "noise_small_icon"
	else
		_characterimage = "mr_orange_small_image"
	np_setpresence(_levelname, "alex-codes-stuff.itch.io/noisesmallbreak", "", _characterimage);
}
np_update();