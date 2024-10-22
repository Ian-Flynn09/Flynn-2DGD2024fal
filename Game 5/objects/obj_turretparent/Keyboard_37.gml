/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DCF6441
/// @DnDArgument : "var" "my_name"
/// @DnDArgument : "value" "obj_controller.whose_turn"
if(my_name == obj_controller.whose_turn)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60463D4F
	/// @DnDParent : 1DCF6441
	/// @DnDArgument : "expr" "rotation_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "barrel_rotation"
	barrel_rotation += rotation_speed;
}