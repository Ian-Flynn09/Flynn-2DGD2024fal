/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 3F13ACF6
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "2"
/// @DnDArgument : "backcol" "$FF00939B"
/// @DnDArgument : "barcol" "$FF666666"
/// @DnDArgument : "mincol" "$FF000099"
/// @DnDArgument : "maxcol" "$FF43FF0F"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + 0, y + 0, x + 0, y + 0, __dnd_health, $FF00939B, $FF000099 & $FFFFFF, $FF43FF0F & $FFFFFF, 2, (($FF00939B>>24) != 0), (($FF666666>>24) != 0));