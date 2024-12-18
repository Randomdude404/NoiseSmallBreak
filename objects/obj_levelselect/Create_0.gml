/// @description Insert description here
// You can write your code in this editor
global.selectedlevel = 0
selectedObj = obj_planet1
key_right = 0
key_left = 0
key_up = 0
zoom = 0.6
ini_open("SaveData.ini");
moonlightUnlocked = ini_read_string("junkbeach", "time", "None")
MrOrange_unlockable = 0
if ini_read_string("moonlight", "time", "None") != "None"
	MrOrange_unlockable = 1
MrOrange_unlocked = ini_read_real("MrOrange", "unlocked", 0)
ini_close()
global.textList = []





