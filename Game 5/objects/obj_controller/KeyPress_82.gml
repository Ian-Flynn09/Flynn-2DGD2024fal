/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3036A13A
/// @DnDArgument : "var" "who_lost"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" ""nobody""
if(!(who_lost == "nobody"))
{
	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 268807DD
	/// @DnDParent : 3036A13A
	randomize();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 364326AC
	/// @DnDParent : 3036A13A
	/// @DnDArgument : "var" "choose_1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "4"
	choose_1 = floor(random_range(1, 4 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B763464
	/// @DnDParent : 3036A13A
	/// @DnDArgument : "var" "choose_1"
	/// @DnDArgument : "value" "1"
	if(choose_1 == 1)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0997756F
		/// @DnDParent : 5B763464
		/// @DnDArgument : "room" "Room1"
		/// @DnDSaveInfo : "room" "Room1"
		room_goto(Room1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0863346C
	/// @DnDParent : 3036A13A
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F02C93A
		/// @DnDParent : 0863346C
		/// @DnDArgument : "var" "choose_1"
		/// @DnDArgument : "value" "2"
		if(choose_1 == 2)
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 3E0AFB3C
			/// @DnDParent : 3F02C93A
			/// @DnDArgument : "room" "Room2"
			/// @DnDSaveInfo : "room" "Room2"
			room_goto(Room2);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4CC87650
		/// @DnDParent : 0863346C
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07DEF254
			/// @DnDParent : 4CC87650
			/// @DnDArgument : "var" "choose_1"
			/// @DnDArgument : "value" "3"
			if(choose_1 == 3)
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 7B8D7712
				/// @DnDParent : 07DEF254
				/// @DnDArgument : "room" "Room3"
				/// @DnDSaveInfo : "room" "Room3"
				room_goto(Room3);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 2B42E2B8
			/// @DnDParent : 4CC87650
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 62C5913B
				/// @DnDParent : 2B42E2B8
				/// @DnDArgument : "var" "choose_1"
				/// @DnDArgument : "value" "4"
				if(choose_1 == 4)
				{
					/// @DnDAction : YoYo Games.Rooms.Go_To_Room
					/// @DnDVersion : 1
					/// @DnDHash : 00F5DD88
					/// @DnDParent : 62C5913B
					/// @DnDArgument : "room" "Room4"
					/// @DnDSaveInfo : "room" "Room4"
					room_goto(Room4);
				}
			}
		}
	}
}