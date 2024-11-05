/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 1EB9A158
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FF2402FF"
effect_create_below(0, x + 0, y + 0, 2, $FF2402FF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 27B1BF5B
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0BA8D7F5
instance_destroy();