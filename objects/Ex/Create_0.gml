/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C749C64
/// @DnDArgument : "code" "xspd = 0;$(13_10)yspd = 0;$(13_10)$(13_10)mvspd = 1;$(13_10)$(13_10)sprite[STAND] = Exile_stand;$(13_10)sprite[RIGHT] = Exile_walk_R;$(13_10)sprite[UP] = Exile_walk_U;$(13_10)sprite[DOWN] = Exile_walk_D;$(13_10)sprite[LEFT] = Exile_walk_L;$(13_10)$(13_10)face = STAND;$(13_10)// Player variables$(13_10)interaction_key = ord("E"); // Key to interact$(13_10)"
xspd = 0;
yspd = 0;

mvspd = 1;

sprite[STAND] = Exile_stand;
sprite[RIGHT] = Exile_walk_R;
sprite[UP] = Exile_walk_U;
sprite[DOWN] = Exile_walk_D;
sprite[LEFT] = Exile_walk_L;

face = STAND;
// Player variables
interaction_key = ord("E"); // Key to interact

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03009CE3
/// @DnDInput : 2
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "expr_1" "20"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "hpmax"
hp = 20;
hpmax = 20;