/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15C4A2A6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// obj_door: Collision Event with obj_player$(13_10)if (is_locked) {$(13_10)    // Stop the player from walking through$(13_10)    other.x = other.xprevious; $(13_10)    other.y = other.yprevious; $(13_10)    show_message("The door is locked. You need a key!");$(13_10)} else {$(13_10)    // The player can walk through$(13_10)    instance_destroy(); // Remove the door (optional, or animate it opening)$(13_10)}$(13_10)"
/// @description Execute Code
// obj_door: Collision Event with obj_player
if (is_locked) {
    // Stop the player from walking through
    other.x = other.xprevious; 
    other.y = other.yprevious; 
    show_message("The door is locked. You need a key!");
} else {
    // The player can walk through
    instance_destroy(); // Remove the door (optional, or animate it opening)
}