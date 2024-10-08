/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 17B94E4B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "color" "$FF666666"
effect_create_below(5, x + 0, y + 0, 0, $FF666666 & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 60508988
/// @DnDArgument : "var" "alarm_countdown"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "room_speed"
/// @DnDArgument : "max" "room_speed*3"
var alarm_countdown = floor(random_range(room_speed, room_speed*3 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 68130075
/// @DnDArgument : "steps" "alarm_countdown"
alarm_set(0, alarm_countdown);