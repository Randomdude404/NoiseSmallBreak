// Feather disable once GM1034
// Feather disable once GM1033
live_auto_call;


event_inherited();
switch state
{
	case 1:
	    	gamepad_set_vibration(0, 0.7, 0.7);
		obj_player.alarm[4] = 3
		player.state = states.jump;
		player.sprite_index = player.spr_bounce;
		player.movespeed = 2;
		player.wallbounceCount = 0
		player.vsp = -20;
		player.grounded = false;

		state = 0;
		break;
}
