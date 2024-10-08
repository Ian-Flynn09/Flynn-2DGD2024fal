/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 782D3E23
/// @DnDArgument : "var" "strength"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "33"
if(strength <= 33)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0F565C9C
	/// @DnDParent : 782D3E23
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "yscale" "strength / 100"
	/// @DnDArgument : "sprite" "spr_strength"
	/// @DnDArgument : "frame" "1"
	/// @DnDSaveInfo : "sprite" "spr_strength"
	draw_sprite_ext(spr_strength, 1, x + 0, y + 0, 1, strength / 100, 0, $FFFFFF & $ffffff, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 64CD047F
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15F0C336
	/// @DnDParent : 64CD047F
	/// @DnDArgument : "var" "strength"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "66"
	if(strength >= 66)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6DDBF5F5
		/// @DnDParent : 15F0C336
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "strength / 100"
		/// @DnDArgument : "sprite" "spr_strength"
		/// @DnDArgument : "frame" "3"
		/// @DnDSaveInfo : "sprite" "spr_strength"
		draw_sprite_ext(spr_strength, 3, x + 0, y + 0, 1, strength / 100, 0, $FFFFFF & $ffffff, 1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6D71E021
	/// @DnDParent : 64CD047F
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F0C4B66
		/// @DnDParent : 6D71E021
		/// @DnDArgument : "var" "strength"
		/// @DnDArgument : "value" "50"
		if(strength == 50)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 1A6C91C6
			/// @DnDParent : 6F0C4B66
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "yscale" "strength / 100"
			/// @DnDArgument : "sprite" "spr_strength"
			/// @DnDArgument : "frame" "2"
			/// @DnDSaveInfo : "sprite" "spr_strength"
			draw_sprite_ext(spr_strength, 2, x + 0, y + 0, 1, strength / 100, 0, $FFFFFF & $ffffff, 1);
		}
	}
}