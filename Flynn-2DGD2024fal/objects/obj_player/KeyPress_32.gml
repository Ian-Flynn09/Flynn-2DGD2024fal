/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EFD4E34
/// @DnDArgument : "var" "canJump"
/// @DnDArgument : "value" "true"
if(canJump == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52795B5C
	/// @DnDInput : 3
	/// @DnDParent : 5EFD4E34
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "jump_height"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "var" "jumping"
	/// @DnDArgument : "var_1" "jumpSpeed"
	/// @DnDArgument : "var_2" "canJump"
	jumping = true;
	jumpSpeed = jump_height;
	canJump = false;
}