/// @description audio listener
// Feather disable once GM1034
// Feather disable once GM1033
live_auto_call;

audio_falloff_set_model(audio_falloff_exponent_distance);
audio_listener_position(-(CAMX + CAMW / 2), CAMY + CAMH / 2, 0);
