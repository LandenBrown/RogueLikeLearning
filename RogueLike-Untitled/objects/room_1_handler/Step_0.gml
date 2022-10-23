/// @description Insert description here
// You can write your code in this editor

if global.monster_count > 0{
	random_x = random_range(0, room_width);
	random_y = random_range(0, room_height);

	instance_create_depth(random_x, random_y, 0, Fire);
	global.monster_count -= 1;
	
}
