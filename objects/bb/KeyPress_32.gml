/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A43C11D
/// @DnDArgument : "expr" "hp-1"
/// @DnDArgument : "var" "hp"
hp = hp-1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 71F5E01C
/// @DnDArgument : "msg" "hp"
show_debug_message(string(hp));