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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 630ED26F
/// @DnDArgument : "var" "p2_score"
/// @DnDArgument : "value" "5"
if(p2_score == 5)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6C0C27AD
	/// @DnDParent : 630ED26F
	/// @DnDArgument : "x" "531"
	/// @DnDArgument : "y" "361"
	/// @DnDArgument : "caption" ""p2 wins! ""
	/// @DnDArgument : "var" "p2_score"
	draw_text(531, 361, string("p2 wins! ") + string(p2_score));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51204DE8
	/// @DnDParent : 630ED26F
	/// @DnDArgument : "var" "obj_ball.speed"
	obj_ball.speed = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 611BCF7A
/// @DnDArgument : "var" "p1_score"
/// @DnDArgument : "value" "5"
if(p1_score == 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DA1CEA0
	/// @DnDParent : 611BCF7A
	/// @DnDArgument : "var" "obj_ball.speed"
	obj_ball.speed = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0870C899
	/// @DnDParent : 611BCF7A
	/// @DnDArgument : "x" "531"
	/// @DnDArgument : "y" "361"
	/// @DnDArgument : "caption" ""P1 wins! ""
	/// @DnDArgument : "var" "p1_score"
	draw_text(531, 361, string("P1 wins! ") + string(p1_score));
}