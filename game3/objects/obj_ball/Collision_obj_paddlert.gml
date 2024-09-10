/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 470BE7D0
/// @DnDArgument : "direction" "135,180,225"
direction = choose(135,180,225);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2A7C65B8
/// @DnDArgument : "soundid" "Soundhit"
/// @DnDArgument : "gain" "2"
/// @DnDSaveInfo : "soundid" "Soundhit"
audio_play_sound(Soundhit, 0, 0, 2, undefined, 1.0);