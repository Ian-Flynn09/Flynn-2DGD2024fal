/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 10B74CDB
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F756646
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.player_lives"
obj_scoreboard.player_lives += -1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 579348B4
/// @DnDArgument : "objectid" "obj_pause"
/// @DnDSaveInfo : "objectid" "obj_pause"
instance_create_layer(0, 0, "Instances", obj_pause);