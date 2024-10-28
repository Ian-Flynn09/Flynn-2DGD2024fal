/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E55FC55
/// @DnDArgument : "code" "while place_meeting(x,y, obj_boxparent)$(13_10){$(13_10)	with instance_place(x,y, obj_boxparent)$(13_10)	{$(13_10)		instance_destroy(self);$(13_10)	}$(13_10)}$(13_10)instance_destroy(self);"
while place_meeting(x,y, obj_boxparent)
{
	with instance_place(x,y, obj_boxparent)
	{
		instance_destroy(self);
	}
}
instance_destroy(self);