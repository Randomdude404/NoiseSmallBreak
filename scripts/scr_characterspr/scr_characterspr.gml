// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_characterspr(){
	switch character 
	{
		case 0:
			spr_idle = spr_player_idle
			spr_jump = spr_player_jump
			spr_longjump = spr_player_longjump
			spr_longjumpend = spr_player_longjumpend
			spr_glidejumpstart = spr_player_glidejumpstart
			spr_glidejump = spr_player_glidejump
			spr_glidefallstart = spr_player_glidefallstart
			spr_glidefall = spr_player_glidefall
			spr_backflip = spr_player_backflip
			spr_backflipfall = spr_player_backflipfall
			spr_bounce = spr_player_bounce
			spr_breakdance = spr_player_breakdance
			spr_crouchslip = spr_player_crouchslip
			spr_dive = spr_player_dive
			spr_fall = spr_player_fall
			spr_forkstart = spr_player_forkstart
			spr_hurt = spr_player_hurt
			spr_mach1 = spr_player_mach1
			spr_mach2 = spr_player_mach2
			spr_mach2fall = spr_player_mach2fall
			spr_mach2jump = spr_player_mach2jump
			spr_mach3 = spr_player_mach3
			spr_runland = spr_player_runland
			spr_stop = spr_player_stop
			spr_stopping = spr_player_stopping
			spr_turn = spr_player_turn
			spr_wallslide = spr_player_wallslide
			spr_wallslidedown = spr_player_wallslidedown
		break
		case 1:
			spr_idle = spr_playerO_idle
			spr_jump = spr_playerO_jump
			spr_longjump = spr_player_longjump
			spr_longjumpend = spr_player_longjumpend
			spr_glidejumpstart = spr_playerO_fly
			spr_glidejump = spr_playerO_fly
			spr_glidefallstart = spr_playerO_fly
			spr_glidefall = spr_playerO_fly
			spr_backflip = spr_playerO_backflip
			spr_backflipfall = spr_playerO_backflipfall
			spr_bounce = spr_player_bounce
			spr_breakdance = spr_player_breakdance
			spr_crouchslip = spr_playerO_crouchslip
			spr_dive = spr_player_dive
			spr_fall = spr_playerO_fall
			spr_forkstart = spr_playerO_forkstart
			spr_hurt = spr_player_hurt
			spr_mach1 = spr_playerO_mach1
			spr_mach2 = spr_playerO_mach2
			spr_mach2fall = spr_playerO_mach2fall
			spr_mach2jump = spr_playerO_mach2jump
			spr_mach3 = spr_playerO_mach3
			spr_runland = spr_playerO_machland
			spr_stop = spr_playerO_stop
			spr_stopping = spr_playerO_stopping
			spr_turn = spr_playerO_turn
			spr_wallslide = spr_playerO_wallslide
			spr_wallslidedown = spr_playerO_wallslidedown
		break
		
	}
}