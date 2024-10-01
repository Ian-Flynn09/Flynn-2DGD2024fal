/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5757DBB2
/// @DnDApplyTo : {obj_powerup1}
with(obj_powerup1) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 47222E8B
/// @DnDArgument : "xpos" "642"
/// @DnDArgument : "ypos" "53"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDSaveInfo : "objectid" "obj_ball"
instance_create_layer(642, 53, "Instances", obj_ball);