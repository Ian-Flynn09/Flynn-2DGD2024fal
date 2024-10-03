/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7195A7C4
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "ball_speed"
ball_speed += 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BE09060
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "var" "upzone"
upzone = 20;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 312B87B4
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "other.x+upzone"
if(x > other.x+upzone)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 45C0F3A2
	/// @DnDParent : 312B87B4
	/// @DnDArgument : "direction" "45"
	direction = 45;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 46B7B105
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E9078B9
	/// @DnDParent : 46B7B105
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "other.x-upzone"
	if(x < other.x-upzone)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 6E9C8159
		/// @DnDParent : 6E9078B9
		/// @DnDArgument : "direction" "135"
		direction = 135;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 303A8321
	/// @DnDParent : 46B7B105
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 7CDB92F4
		/// @DnDParent : 303A8321
		/// @DnDArgument : "direction" "90"
		direction = 90;
	}
}