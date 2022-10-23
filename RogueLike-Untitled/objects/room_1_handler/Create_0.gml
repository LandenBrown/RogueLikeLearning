/// @description Insert description here
// You can write your code in this editor

global.monster_count = 3;
global.monsters_left = global.monster_count;

random_xp = random_range(0, room_width);
random_yp = random_range(0, room_height);


player = instance_create_depth(random_xp, random_yp, 0, Player);





