/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 439AD994
/// @DnDArgument : "var" "player_lives"
if(player_lives == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5699F289
	/// @DnDParent : 439AD994
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "roomlose"
	if(!(room == roomlose))
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0340575D
		/// @DnDParent : 5699F289
		/// @DnDArgument : "room" "roomlose"
		/// @DnDSaveInfo : "room" "roomlose"
		room_goto(roomlose);
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 29A9E85F
/// @DnDArgument : "obj" "obj_block_parent"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_block_parent"
var l29A9E85F_0 = false;
l29A9E85F_0 = instance_exists(obj_block_parent);
if(!l29A9E85F_0)
{
	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6133B37B
	/// @DnDParent : 29A9E85F
	/// @DnDArgument : "not" "1"
	if(room != room_last)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 46CC22B6
		/// @DnDParent : 6133B37B
		room_goto_next();
	}
}