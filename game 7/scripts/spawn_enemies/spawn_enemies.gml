/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 301AAE56
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "spawn_enemies"
function spawn_enemies() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 440568F1
	/// @DnDParent : 301AAE56
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)for (var i = 0; i < enemies_per_round; i++) {$(13_10)    var spawn_x = random(room_width);$(13_10)    var spawn_y = random(room_height);$(13_10)$(13_10)    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);$(13_10)}$(13_10)enemies_per_round += 2;$(13_10)"
	/// @description Execute Code
	for (var i = 0; i < enemies_per_round; i++) {
	    var spawn_x = random(room_width);
	    var spawn_y = random(room_height);
	
	    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);
	}
	enemies_per_round += 2;
}