/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59E14DDA
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "false"
if(invincible == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19F21807
	/// @DnDInput : 2
	/// @DnDParent : 59E14DDA
	/// @DnDArgument : "expr" "-20"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "health"
	/// @DnDArgument : "var_1" "invincible"
	health += -20;
	invincible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7BB1A79E
	/// @DnDParent : 59E14DDA
	/// @DnDArgument : "alarm" "5"
	alarm_set(5, 30);
}