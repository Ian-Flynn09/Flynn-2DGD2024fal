/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0A9B207F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "spawn_enemies(5)"
function spawn_enemies(5)() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1529144B
	/// @DnDParent : 0A9B207F
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Function to spawn enemies$(13_10)function spawn_enemies() {$(13_10)    var i;$(13_10)    for (i = 0; i < enemies_per_round; i++) {$(13_10)        var spawn_x = random(room_width); // Random X within the room$(13_10)        var spawn_y = random(room_height); // Random Y within the room$(13_10)        instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);$(13_10)    }$(13_10)    enemy_spawned = enemies_per_round; // Update the number of enemies spawned$(13_10)}$(13_10)"
	/// @description Execute Code
	// Function to spawn enemies
	function spawn_enemies() {
	    var i;
	    for (i = 0; i < enemies_per_round; i++) {
	        var spawn_x = random(room_width); // Random X within the room
	        var spawn_y = random(room_height); // Random Y within the room
	        instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);
	    }
	    enemy_spawned = enemies_per_round; // Update the number of enemies spawned
	}
}