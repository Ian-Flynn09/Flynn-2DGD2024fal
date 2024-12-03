/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C5D2E25
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Key Release Event for attack (e.g., Spacebar)$(13_10)attacking = false; // Player stops attacking$(13_10)$(13_10)// Reset to idle sprite based on direction$(13_10)switch (my_direction) {$(13_10)    case "up":$(13_10)        sprite_index = spr_idle;$(13_10)        break;$(13_10)    case "down":$(13_10)        sprite_index = spr_idle;$(13_10)        break;$(13_10)    case "left":$(13_10)        sprite_index = spr_idle;$(13_10)        break;$(13_10)    case "right":$(13_10)        sprite_index = spr_idle;$(13_10)        break;$(13_10)}$(13_10)my_image_speed = 0; // Stop animation$(13_10)"
/// @description Execute Code
// Key Release Event for attack (e.g., Spacebar)
attacking = false; // Player stops attacking

// Reset to idle sprite based on direction
switch (my_direction) {
    case "up":
        sprite_index = spr_idle;
        break;
    case "down":
        sprite_index = spr_idle;
        break;
    case "left":
        sprite_index = spr_idle;
        break;
    case "right":
        sprite_index = spr_idle;
        break;
}
my_image_speed = 0; // Stop animation