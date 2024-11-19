/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54DDABB0
/// @DnDArgument : "var" "jumpSpeed"
/// @DnDArgument : "op" "2"
if(jumpSpeed > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75DB1EED
	/// @DnDParent : 54DDABB0
	/// @DnDArgument : "expr" "jumpSpeed*0.5"
	/// @DnDArgument : "var" "jumpSpeed"
	jumpSpeed = jumpSpeed*0.5;
}