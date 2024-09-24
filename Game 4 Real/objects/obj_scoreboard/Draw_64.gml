/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 36BE3C1F
/// @DnDArgument : "font" "font_score"
/// @DnDSaveInfo : "font" "font_score"
draw_set_font(font_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6A38FD9E
/// @DnDArgument : "x" "64"
/// @DnDArgument : "y" "64"
/// @DnDArgument : "caption" ""Lives:""
/// @DnDArgument : "var" "player_lives"
draw_text(64, 64, string("Lives:") + string(player_lives));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 31A185FC
/// @DnDArgument : "x" "1150"
/// @DnDArgument : "y" "64"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "Points"
draw_text(1150, 64, string("Score: ") + string(Points));