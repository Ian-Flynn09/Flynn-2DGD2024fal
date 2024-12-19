/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 720F6C76
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "false"
if(invincible == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B29096C
	/// @DnDInput : 2
	/// @DnDParent : 720F6C76
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "health"
	/// @DnDArgument : "var_1" "invincible"
	health += -2;
	invincible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3AB96060
	/// @DnDParent : 720F6C76
	/// @DnDArgument : "alarm" "5"
	alarm_set(5, 30);
}