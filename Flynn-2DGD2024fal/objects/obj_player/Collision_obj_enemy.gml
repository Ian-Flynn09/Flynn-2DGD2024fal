/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46564DAC
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "other.y"
if(y < other.y)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48538C15
	/// @DnDParent : 46564DAC
	/// @DnDArgument : "var" "jumpSpeed"
	if(jumpSpeed == 0)
	{
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64BEA37D
	/// @DnDApplyTo : other
	/// @DnDParent : 46564DAC
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B6A910F
	/// @DnDParent : 46564DAC
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "jumpSpeed"
	jumpSpeed = 10;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0DC4A5C3
else
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 781E580F
	/// @DnDParent : 0DC4A5C3
	room_restart();
}