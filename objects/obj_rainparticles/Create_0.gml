/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 7293B381
/// @DnDArgument : "var" "global.p_system"
global.p_system = part_system_create_layer("Instances", 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 5BBD3710
/// @DnDArgument : "var" "global.particle1"
global.particle1 = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 5858569C
/// @DnDArgument : "type" "global.particle1"
part_type_shape(global.particle1, pt_shape_pixel);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 065B9391
/// @DnDArgument : "type" "global.particle1"
/// @DnDArgument : "minsize" "1"
/// @DnDArgument : "maxsize" "2"
part_type_size(global.particle1, 1, 2, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 31BB6E47
/// @DnDArgument : "type" "global.particle1"
/// @DnDArgument : "startcol" "$FFCC9255"
/// @DnDArgument : "midcol" "$FFFFD87F"
/// @DnDArgument : "endcol" "$FFE5A654"
part_type_colour3(global.particle1, $FFCC9255 & $FFFFFF, $FFFFD87F & $FFFFFF, $FFE5A654 & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 4932B6F0
/// @DnDArgument : "type" "global.particle1"
part_type_alpha3(global.particle1, 1, 1, 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 2CA47577
/// @DnDArgument : "type" "global.particle1"
/// @DnDArgument : "minspeed" "2"
/// @DnDArgument : "maxspeed" "3"
part_type_speed(global.particle1, 2, 3, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 323587A6
/// @DnDArgument : "type" "global.particle1"
/// @DnDArgument : "mindir" "240"
/// @DnDArgument : "maxdir" "300"
part_type_direction(global.particle1, 240, 300, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 7A0759E6
/// @DnDArgument : "typ" "global.particle1"
/// @DnDArgument : "minlife" "120"
/// @DnDArgument : "maxlife" "240"
part_type_life(global.particle1, 120, 240);