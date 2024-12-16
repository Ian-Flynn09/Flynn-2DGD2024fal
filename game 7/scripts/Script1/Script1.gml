/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 19B1503A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "play_sound"
/// @DnDArgument : "arg" "times"
function play_sound(times) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 36153923
	/// @DnDParent : 19B1503A
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)audio_play_sound(snd_bell,1,false)$(13_10)$(13_10)if times == 2{$(13_10)	alarm[1] = room_speed;$(13_10)}$(13_10)$(13_10)if times == 3{$(13_10)	alarm[2] = room_speed * 2;$(13_10)}$(13_10)"
	/// @description Execute Code
	audio_play_sound(snd_bell,1,false)
	
	if times == 2{
		alarm[1] = room_speed;
	}
	
	if times == 3{
		alarm[2] = room_speed * 2;
	}
}