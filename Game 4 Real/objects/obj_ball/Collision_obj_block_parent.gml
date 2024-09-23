/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62316469
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)///Bounce against walls$(13_10)$(13_10)move_bounce_all(true);$(13_10)move_outside_all(direction, 100);$(13_10)$(13_10)"
/// @description Execute Code
///Bounce against walls

move_bounce_all(true);
move_outside_all(direction, 100);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3CCE7A9A
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72839C60
/// @DnDArgument : "expr" "other.myPoints"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.Points"
obj_scoreboard.Points += other.myPoints;