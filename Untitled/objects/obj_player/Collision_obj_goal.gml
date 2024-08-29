/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 15DDE80D
/// @DnDArgument : "not" "1"
if(room != room_last)
{

}

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 4AAF7578
room_goto_next();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 270BCA23
/// @DnDArgument : "soundid" "s_goodjob"
/// @DnDSaveInfo : "soundid" "s_goodjob"
audio_play_sound(s_goodjob, 0, 0, 1.0, undefined, 1.0);