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
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)for(var i=0; i<times; i++){ $(13_10)audio_play_sound(snd_bell),1,false$(13_10)}$(13_10)$(13_10)for(var i=1 i<times; i++){$(13_10)	audio_play_sound(snd_bell),2,false$(13_10)}$(13_10)$(13_10){$(13_10)	$(13_10)}$(13_10)$(13_10)"
	/// @description Execute Code
	for(var i=0; i<times; i++){ 
	audio_play_sound(snd_bell),1,false
	}
	
	for(var i=1 i<times; i++){
		audio_play_sound(snd_bell),2,false
	}
	
	{
		
	}
}