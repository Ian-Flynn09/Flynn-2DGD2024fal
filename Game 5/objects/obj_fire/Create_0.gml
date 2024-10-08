/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 19E55D6F
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 27F95412
/// @DnDArgument : "var" "fire_start_frame"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "3"
var fire_start_frame = floor(random_range(0, 3 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 708E2B7D
/// @DnDArgument : "expr" "fire_start_frame"
/// @DnDArgument : "var" "image_index"
image_index = fire_start_frame;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 50BE5ACF
/// @DnDArgument : "var" "alarm_countdown"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "room_speed"
/// @DnDArgument : "max" "room_speed*3"
var alarm_countdown = floor(random_range(room_speed, room_speed*3 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 35822F09
/// @DnDArgument : "steps" "alarm_countdown"
alarm_set(0, alarm_countdown);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 120AB4B3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "color" "$FF666666"
effect_create_below(5, x + 0, y + 0, 0, $FF666666 & $ffffff);