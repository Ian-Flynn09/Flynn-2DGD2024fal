/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 520EA1C8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)attacking = true; // Player starts attacking$(13_10)$(13_10)$(13_10)switch (my_direction) {$(13_10)    case "up":$(13_10)        sprite_index = spr_swingup;$(13_10)        break;$(13_10)    case "down":$(13_10)        sprite_index = spr_swingdown;$(13_10)        break;$(13_10)    case "left":$(13_10)        sprite_index = spr_swingleft;$(13_10)        break;$(13_10)    case "right":$(13_10)        sprite_index = spr_swingright;$(13_10)        break;$(13_10)}$(13_10)$(13_10)$(13_10)image_index = 0;$(13_10)image_speed = 1; $(13_10)"
/// @description Execute Code

attacking = true; // Player starts attacking


switch (my_direction) {
    case "up":
        sprite_index = spr_swingup;
        break;
    case "down":
        sprite_index = spr_swingdown;
        break;
    case "left":
        sprite_index = spr_swingleft;
        break;
    case "right":
        sprite_index = spr_swingright;
        break;
}


image_index = 0;
image_speed = 1;