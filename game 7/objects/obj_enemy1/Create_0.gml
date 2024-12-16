/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25AB6D9C
/// @DnDInput : 3
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "expr_1" "5"
/// @DnDArgument : "expr_2" "2"
/// @DnDArgument : "var" "espeed1"
/// @DnDArgument : "var_1" "ehealth1"
/// @DnDArgument : "var_2" "edamage1"
espeed1 = 4;
ehealth1 = 5;
edamage1 = 2;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4F6AB26B
/// @DnDArgument : "speed" "espeed1"
speed = espeed1;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 1B48DF15
randomize();

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 0077C891
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 25624109
/// @DnDArgument : "steps" "300"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 300);