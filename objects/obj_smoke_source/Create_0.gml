/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 7F619D7E
/// @DnDArgument : "persist" "1"
system = part_system_create_layer("Instances", 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 2C844174
type = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1C06BD6D
/// @DnDArgument : "sprite" "spr_bullet_red_baron"
/// @DnDSaveInfo : "sprite" "spr_bullet_red_baron"
part_type_sprite(type, spr_bullet_red_baron, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Emit_Create
/// @DnDVersion : 1
/// @DnDHash : 5A004401
emitter = part_emitter_create(system);