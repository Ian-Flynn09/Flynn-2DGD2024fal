/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 78A46C4C
/// @DnDArgument : "expr" "place_empty(x, y+1)"
if(place_empty(x, y+1))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 79F9FF4D
	/// @DnDParent : 78A46C4C
	/// @DnDArgument : "expr" "place_empty(x, + vspeed)"
	if(place_empty(x, + vspeed))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
		/// @DnDVersion : 1
		/// @DnDHash : 490759FC
		/// @DnDParent : 79F9FF4D
		gravity = 1;
	}
}