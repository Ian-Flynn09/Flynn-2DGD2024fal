/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31582D69
/// @DnDArgument : "var" "count_up"
/// @DnDArgument : "value" "true"
if(count_up == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 177D911B
	/// @DnDParent : 31582D69
	/// @DnDArgument : "var" "strength"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(strength < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C67B31A
		/// @DnDParent : 177D911B
		/// @DnDArgument : "expr" "count_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "strength"
		strength += count_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 658DDF7C
		/// @DnDParent : 177D911B
		/// @DnDArgument : "var" "strength"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "100"
		if(strength >= 100)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 345F08D3
			/// @DnDInput : 2
			/// @DnDParent : 658DDF7C
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "var" "strength"
			/// @DnDArgument : "var_1" "count_up"
			strength = 100;
			count_up = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 00FF0A68
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BD87D93
	/// @DnDParent : 00FF0A68
	/// @DnDArgument : "var" "count_up"
	/// @DnDArgument : "value" "false"
	if(count_up == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B2AA78F
		/// @DnDParent : 7BD87D93
		/// @DnDArgument : "var" "strength"
		/// @DnDArgument : "op" "2"
		if(strength > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6B55F794
			/// @DnDParent : 3B2AA78F
			/// @DnDArgument : "expr" "-count_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "strength"
			strength += -count_speed;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18114F09
			/// @DnDParent : 3B2AA78F
			/// @DnDArgument : "var" "strength"
			/// @DnDArgument : "op" "3"
			if(strength <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4C410E85
				/// @DnDInput : 2
				/// @DnDParent : 18114F09
				/// @DnDArgument : "expr_1" "true"
				/// @DnDArgument : "var" "strength"
				/// @DnDArgument : "var_1" "count_up"
				strength = 0;
				count_up = true;
			}
		}
	}
}