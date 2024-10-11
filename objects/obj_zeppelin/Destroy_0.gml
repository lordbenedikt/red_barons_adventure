/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 290011B2
/// @DnDArgument : "script" "instance_destroy"
/// @DnDArgument : "arg" "lights"
script_execute(instance_destroy, lights);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1B329426
/// @DnDArgument : "script" "instance_destroy"
/// @DnDArgument : "arg" "lantern_first"
script_execute(instance_destroy, lantern_first);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 65757506
/// @DnDArgument : "script" "instance_destroy"
/// @DnDArgument : "arg" "lantern_second"
script_execute(instance_destroy, lantern_second);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7D268AA1
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 26B684AB
/// @DnDArgument : "xpos" "-180"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
instance_create_layer(x + -180, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 553DA58B
/// @DnDArgument : "xpos" "180"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
instance_create_layer(x + 180, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10BAF91B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)spawn_explosion(x,y);$(13_10)level_done();$(13_10)global.cheat_codes[? "invincible"] = true;"
/// @description Execute Code

spawn_explosion(x,y);
level_done();
global.cheat_codes[? "invincible"] = true;