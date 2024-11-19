/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A323625
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var dir = -keyboard_check(vk_left) + keyboard_check(vk_right)$(13_10)$(13_10)//put your sprite names here:$(13_10)var jump_right = spr_jumpright$(13_10)var walk_right = spr_walkright$(13_10)var jump_left = spr_jumpleft$(13_10)var walk_left = spr_walkleft$(13_10)$(13_10)image_speed = 2$(13_10)if (dir == 1){$(13_10)	if (jumping){$(13_10)		sprite_index = jump_right;$(13_10)	}$(13_10)	else {$(13_10)		sprite_index = walk_right;$(13_10)	}$(13_10)}$(13_10)else if (dir == -1){$(13_10)	if (jumping){$(13_10)		sprite_index = jump_left;$(13_10)	}$(13_10)	else {$(13_10)		sprite_index = walk_left;$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	if (!jumping and sprite_index = jump_right){$(13_10)		sprite_index = walk_right;$(13_10)	} else if (!jumping and sprite_index = jump_left){$(13_10)		sprite_index = walk_left;$(13_10)	} else if (jumping and sprite_index = walk_right) {$(13_10)		sprite_index = jump_right;$(13_10)	} else if (jumping and sprite_index = walk_left) {$(13_10)		sprite_index = jump_left;$(13_10)	}$(13_10)	image_speed = 0;$(13_10)	image_index = 0;$(13_10)}$(13_10)	"
/// @description Execute Code
var dir = -keyboard_check(vk_left) + keyboard_check(vk_right)

//put your sprite names here:
var jump_right = spr_jumpright
var walk_right = spr_walkright
var jump_left = spr_jumpleft
var walk_left = spr_walkleft

image_speed = 2
if (dir == 1){
	if (jumping){
		sprite_index = jump_right;
	}
	else {
		sprite_index = walk_right;
	}
}
else if (dir == -1){
	if (jumping){
		sprite_index = jump_left;
	}
	else {
		sprite_index = walk_left;
	}
}
else {
	if (!jumping and sprite_index = jump_right){
		sprite_index = walk_right;
	} else if (!jumping and sprite_index = jump_left){
		sprite_index = walk_left;
	} else if (jumping and sprite_index = walk_right) {
		sprite_index = jump_right;
	} else if (jumping and sprite_index = walk_left) {
		sprite_index = jump_left;
	}
	image_speed = 0;
	image_index = 0;
}