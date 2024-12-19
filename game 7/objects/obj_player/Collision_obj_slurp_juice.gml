/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14547E72
/// @DnDArgument : "expr" "+50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "health"
health += +50;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4AB6A8DB
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 013C6E95
/// @DnDArgument : "soundid" "snd_drink"
/// @DnDSaveInfo : "soundid" "snd_drink"
audio_play_sound(snd_drink, 0, 0, 1.0, undefined, 1.0);