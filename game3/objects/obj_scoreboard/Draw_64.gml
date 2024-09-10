/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 57C4F96A
/// @DnDArgument : "font" "fnt_scoreboard"
/// @DnDSaveInfo : "font" "fnt_scoreboard"
draw_set_font(fnt_scoreboard);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7D942FE5
/// @DnDArgument : "font" "fnt_scoreboard"
/// @DnDSaveInfo : "font" "fnt_scoreboard"
draw_set_font(fnt_scoreboard);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 09BC4903
/// @DnDArgument : "x" "184"
/// @DnDArgument : "y" "112"
/// @DnDArgument : "caption" ""player 1 score: ""
/// @DnDArgument : "var" "p1_score"
draw_text(184, 112, string("player 1 score: ") + string(p1_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6A841454
/// @DnDArgument : "x" "850"
/// @DnDArgument : "y" "112"
/// @DnDArgument : "caption" ""player 2 score: ""
/// @DnDArgument : "var" "p2_score"
draw_text(850, 112, string("player 2 score: ") + string(p2_score));