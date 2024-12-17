/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 23E53F74
/// @DnDArgument : "font" "Font2"
/// @DnDSaveInfo : "font" "Font2"
draw_set_font(Font2);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4DCBEA68
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Time Limit: ""
/// @DnDArgument : "var" "time_limit"
draw_text(x + 0, y + 0, string("Time Limit: ") + string(time_limit));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 279A0CF6
/// @DnDArgument : "caption" ""Round: ""
/// @DnDArgument : "var" "1"
draw_text(0, 0, string("Round: ") + string(1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 077A5CAD
/// @DnDArgument : "var" "time_limit"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "401"
if(time_limit >= 401)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5FC19AB6
	/// @DnDParent : 077A5CAD
	/// @DnDArgument : "color" "$FF05FF2E"
	draw_set_colour($FF05FF2E & $ffffff);
	var l5FC19AB6_0=($FF05FF2E >> 24);
	draw_set_alpha(l5FC19AB6_0 / $ff);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6521C612
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27A7B7F5
	/// @DnDParent : 6521C612
	/// @DnDArgument : "var" "time_limit"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "201"
	if(time_limit >= 201)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3AEEEFA9
		/// @DnDParent : 27A7B7F5
		/// @DnDArgument : "color" "$FF00D8D8"
		draw_set_colour($FF00D8D8 & $ffffff);
		var l3AEEEFA9_0=($FF00D8D8 >> 24);
		draw_set_alpha(l3AEEEFA9_0 / $ff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E2300CE
		/// @DnDParent : 27A7B7F5
		/// @DnDArgument : "var" "sound_1"
		/// @DnDArgument : "value" "false"
		if(sound_1 == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 72D35BF7
			/// @DnDParent : 3E2300CE
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "sound_1"
			sound_1 = true;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2A7554CA
			/// @DnDParent : 3E2300CE
			/// @DnDArgument : "soundid" "snd_bell"
			/// @DnDSaveInfo : "soundid" "snd_bell"
			audio_play_sound(snd_bell, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 0E5A8DA6
			/// @DnDParent : 3E2300CE
			/// @DnDArgument : "steps" "room_speed"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, room_speed);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 7FAC1DD4
			/// @DnDParent : 3E2300CE
			/// @DnDArgument : "steps" "room_speed*2"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed*2);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 31920AAD
	/// @DnDParent : 6521C612
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 606F9051
		/// @DnDParent : 31920AAD
		/// @DnDArgument : "var" "time_limit"
		/// @DnDArgument : "op" "4"
		if(time_limit >= 0)
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 1D58C8E8
			/// @DnDParent : 606F9051
			/// @DnDArgument : "color" "$FF000096"
			draw_set_colour($FF000096 & $ffffff);
			var l1D58C8E8_0=($FF000096 >> 24);
			draw_set_alpha(l1D58C8E8_0 / $ff);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 01055AD5
		/// @DnDParent : 31920AAD
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12473A3B
			/// @DnDParent : 01055AD5
			/// @DnDArgument : "var" "time_limit"
			if(time_limit == 0)
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Value
				/// @DnDVersion : 1
				/// @DnDHash : 13B9D007
				/// @DnDParent : 12473A3B
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "caption" "" Game Over :( ""
				/// @DnDArgument : "var" "0"
				draw_text(x + 0, y + 0, string(" Game Over :( ") + string(0));
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 525A8C1F
				/// @DnDParent : 12473A3B
				instance_destroy();
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 046C3A3C
				/// @DnDParent : 12473A3B
			}
		}
	}
}