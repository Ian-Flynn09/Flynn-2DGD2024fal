/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 3C5C6411
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FF0AA1FF"
effect_create_above(0, x + 0, y + 0, 2, $FF0AA1FF & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 285E13AC
/// @DnDArgument : "expr" "my_name"
/// @DnDArgument : "var" "obj_controller.who_lost"
obj_controller.who_lost = my_name;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3031FBBC
instance_destroy();