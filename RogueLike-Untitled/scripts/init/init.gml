// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
gml_pragma("global", "init()");

#region Particle Types

var _p = part_type_create();


//part_type_sprite(_p, Fireball, false);

part_type_shape(_p, pt_shape_disk);
part_type_life(_p, 5, 5);
part_type_scale(_p, 0.1, 0.1);

part_type_speed(_p, 2, 4, 0,0);
part_type_direction(_p, 0, 360, 0,0);
part_type_alpha2(_p, 1, 0);
part_type_color2(_p, c_red, c_white);
part_type_orientation(_p, 0, 0, 0, 0, true);
//size_inr make particle grow over time
//size_wiggle random added or substraced from size 
//part_type_size(_p, 0.1, 0.1, 0, 0); 
//part_type_gravity - set a weight to them

global.ptBasic = _p;

var _p = part_type_create();
part_type_shape(_p, pt_shape_smoke);
part_type_direction(_p, 0, 360, 0,0);
part_type_life(_p, 10, 10);
part_type_size(_p, .05, .05, -.02, 0);

global.ptTrail = _p;

part_type_step(global.ptBasic, 1, global.ptTrail);

//// Second Boss Particle Effects

var _p = part_type_create();
part_type_shape(_p, pt_shape_flare);
part_type_life(_p, 5, 7);
part_type_scale(_p, 1.5, 1.5);
part_type_alpha2(_p, 1, 0);
part_type_color2(_p, c_blue, c_white);

global.sbParticle = _p;



#endregion