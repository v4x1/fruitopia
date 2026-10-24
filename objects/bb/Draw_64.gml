/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 5F325107
/// @DnDArgument : "x1" "220"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "36"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "-3"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-1"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "1"
/// @DnDArgument : "value" "(hp/hpmax)*100"
/// @DnDArgument : "backcol" "$00FFFFFF"
/// @DnDArgument : "barcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FF0000A0"
/// @DnDArgument : "maxcol" "$FF008906"
draw_healthbar(x + 220, y + 36, x + -3, y + -1, (hp/hpmax)*100, $00FFFFFF & $FFFFFF, $FF0000A0 & $FFFFFF, $FF008906 & $FFFFFF, 1, (($00FFFFFF>>24) != 0), (($00FFFFFF>>24) != 0));