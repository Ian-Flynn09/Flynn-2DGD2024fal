/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 19AC8BEF
/// @DnDArgument : "soundid" "s_beep"
/// @DnDArgument : "gain" ".5"
/// @DnDArgument : "pitch" ".5"
/// @DnDSaveInfo : "soundid" "s_beep"
audio_play_sound(s_beep, 0, 0, .5, undefined, .5);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 197B0F30
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)move_bounce_all(true);$(13_10)move_outside_all(direction, 100);"
/// @description Execute Code

move_bounce_all(true);
move_outside_all(direction, 100);