/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3B9B8741
/// @DnDArgument : "font" "Fontscoreboard"
/// @DnDSaveInfo : "font" "Fontscoreboard"
draw_set_font(Fontscoreboard);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5685C1C7
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 298B2492
/// @DnDArgument : "var" "who_lost"
/// @DnDArgument : "value" ""nobody""
if(who_lost == "nobody")
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31D5B108
	/// @DnDParent : 298B2492
	/// @DnDArgument : "var" "whose_turn"
	/// @DnDArgument : "value" ""objturret1""
	if(whose_turn == "objturret1")
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 60140AC9
		/// @DnDParent : 31D5B108
		/// @DnDArgument : "color" "$FFFFE207"
		draw_set_colour($FFFFE207 & $ffffff);
		var l60140AC9_0=($FFFFE207 >> 24);
		draw_set_alpha(l60140AC9_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5604A172
		/// @DnDParent : 31D5B108
		/// @DnDArgument : "x" "room_width / 2"
		/// @DnDArgument : "y" "80"
		/// @DnDArgument : "caption" ""Player One's Turn ""
		draw_text(room_width / 2, 80, string("Player One's Turn ") + "");
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 68258FA4
	/// @DnDParent : 298B2492
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A62FA73
		/// @DnDParent : 68258FA4
		/// @DnDArgument : "var" "who_lost"
		/// @DnDArgument : "value" ""nobody""
		if(who_lost == "nobody")
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3FC1E733
			/// @DnDParent : 7A62FA73
			/// @DnDArgument : "var" "whose_turn"
			/// @DnDArgument : "value" ""objturret2""
			if(whose_turn == "objturret2")
			{
				/// @DnDAction : YoYo Games.Drawing.Set_Color
				/// @DnDVersion : 1
				/// @DnDHash : 71A4BAAD
				/// @DnDParent : 3FC1E733
				/// @DnDArgument : "color" "$FF0008FF"
				draw_set_colour($FF0008FF & $ffffff);
				var l71A4BAAD_0=($FF0008FF >> 24);
				draw_set_alpha(l71A4BAAD_0 / $ff);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Value
				/// @DnDVersion : 1
				/// @DnDHash : 12A1D6DE
				/// @DnDParent : 3FC1E733
				/// @DnDArgument : "x" "room_width / 2"
				/// @DnDArgument : "y" "80"
				/// @DnDArgument : "caption" ""Player Two's Turn ""
				draw_text(room_width / 2, 80, string("Player Two's Turn ") + "");
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1ED7CCC0
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59C6D991
	/// @DnDParent : 1ED7CCC0
	/// @DnDArgument : "var" "who_lost"
	/// @DnDArgument : "value" ""objturret1""
	if(who_lost == "objturret1")
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 28F8A861
		/// @DnDParent : 59C6D991
		/// @DnDArgument : "color" "$FFFFE207"
		draw_set_colour($FFFFE207 & $ffffff);
		var l28F8A861_0=($FFFFE207 >> 24);
		draw_set_alpha(l28F8A861_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4AC1768E
		/// @DnDParent : 59C6D991
		/// @DnDArgument : "x" "room_width /2"
		/// @DnDArgument : "y" "80"
		/// @DnDArgument : "caption" ""Player Two Won""
		draw_text(room_width /2, 80, string("Player Two Won") + "");
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1D9B2B10
	/// @DnDParent : 1ED7CCC0
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7AB72AD9
		/// @DnDParent : 1D9B2B10
		/// @DnDArgument : "var" "who_lost"
		/// @DnDArgument : "value" ""objturret2""
		if(who_lost == "objturret2")
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 6B9E5405
			/// @DnDParent : 7AB72AD9
			/// @DnDArgument : "color" "$FF0008FF"
			draw_set_colour($FF0008FF & $ffffff);
			var l6B9E5405_0=($FF0008FF >> 24);
			draw_set_alpha(l6B9E5405_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 41118DA5
			/// @DnDParent : 7AB72AD9
			/// @DnDArgument : "x" "room_width /2"
			/// @DnDArgument : "y" "80"
			/// @DnDArgument : "caption" ""Player One Won ""
			draw_text(room_width /2, 80, string("Player One Won ") + "");
		}
	}
}