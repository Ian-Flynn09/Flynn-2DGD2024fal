/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E7CF009
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "transitioning"
transitioning = false;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AC2F7E1
/// @DnDArgument : "var" "whose_turn"
/// @DnDArgument : "value" ""objturret1""
if(whose_turn == "objturret1")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40FC1172
	/// @DnDParent : 3AC2F7E1
	/// @DnDArgument : "expr" ""objturret2""
	/// @DnDArgument : "var" "whose_turn"
	whose_turn = "objturret2";
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 451D8A1A
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03CBBDB6
	/// @DnDParent : 451D8A1A
	/// @DnDArgument : "expr" ""objturret1""
	/// @DnDArgument : "var" "whose_turn"
	whose_turn = "objturret1";
}