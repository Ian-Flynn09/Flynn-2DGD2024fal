/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5757DBB2
/// @DnDApplyTo : {obj_powerup1}
with(obj_powerup1) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1E806374
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6053AAE1
/// @DnDArgument : "xpos" "595"
/// @DnDArgument : "ypos" "639"
/// @DnDArgument : "objectid" "obj_megapaddle"
/// @DnDSaveInfo : "objectid" "obj_megapaddle"
instance_create_layer(595, 639, "Instances", obj_megapaddle);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4533E5B5
/// @DnDArgument : "soundid" "sndpowerup"
/// @DnDSaveInfo : "soundid" "sndpowerup"
audio_play_sound(sndpowerup, 0, 0, 1.0, undefined, 1.0);