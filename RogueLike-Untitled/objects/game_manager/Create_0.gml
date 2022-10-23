/// @description Insert description here
// You can write your code in this editor

//Weapon Damages
global.Bullet_Damage = 1;

random_xp = random_range(0, room_width);
random_yp = random_range(0, room_height);
player = instance_create_depth(random_xp, random_yp, 0, Player);



function calculate_difficulty() {

	if global.attacks_count <= 14{
		global.difficulty_modifier = 1.3;
	}
	else if global.attacks_count <= 30 {
		global.difficulty_modifier = 1.2;
	}
	else if global.attacks_count <= 75 {
		global.difficulty_modifier = 1.1;
	}
	global.attacks_count = 0;
	
}
function check_remaining_monsters() {
	calculate_difficulty();
	if global.monsters_left <= 0 {
		//global.difficulty_modifier += .5;
		global.total_enemies = round((global.total_enemies*global.difficulty_modifier));
		global.spawn_monster_count = global.total_enemies;
		global.monsters_left = global.spawn_monster_count;
		global.monsters_left = int64(global.monsters_left);
	}
}

function check_spawn_monsters() {
	if global.spawn_monster_count > 0{
		random_x = random_range(0, room_width);
		random_y = random_range(0, room_height);
		instance_create_depth(random_x, random_y, 0, Fire);
		global.spawn_monster_count -= 1;
	}
}





