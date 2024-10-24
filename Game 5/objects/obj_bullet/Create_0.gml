/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B1C33F4
/// @DnDArgument : "expr" "2.5"
/// @DnDArgument : "var" "divider"
divider = 2.5;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 558ECE91
gravity = 1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3E743DA8
/// @DnDArgument : "speed" "obj_strength.strength / divider"
speed = obj_strength.strength / divider;