/// @description Insert description here
// You can write your code in this editor
//Initial Difficulties
global.total_enemies = 3;
global.spawn_monster_count = global.total_enemies;
global.monsters_left = global.spawn_monster_count;
global.difficulty_modifier = 1;
global.currentStage = 1;
global.maxStage = 1;
//Weapon Damages
global.Bullet_Damage = 1;
global.SilverCoins = 0;
global.GoldCoins = 0;
if file_exists("saved.save"){
	ini_open("saved.save");
	global.SilverCoins = int64(ini_read_string("Player Variables", "Silver", 0));
	global.GoldCoins = int64(ini_read_string("Player Variables", "Gold", 0));
	global.maxStage = int64(ini_read_string("Player Variables", "Max Stage", 1));
	ini_close();
}


//Player Attributes
random_xp = random_range(0, room_width);
random_yp = random_range(0, room_height);
instance_create_depth(random_xp, random_yp, 0, Player);

//Load

//if (file_exists("savedgame.save"))
//{
//	var _buffer = buffer_load("savedgame.save");
//	var _string = buffer_read( _buffer, buffer_string);
//	buffer_delete(_buffer);
//	var _loadData = json_parse(_string);
//	//show_debug_message(str(_loadData[0]))
	
//	//show_debug_message(str(array_length(_loadData)));
//	// Load actual values
//	global.SilverCoins = int64(_loadData[0]);
//	global.GoldCoins = int64(_loadData[1])
	
//}






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
		global.currentStage += 1;
		if global.currentStage > global.maxStage {
			global.maxStage = global.currentStage;
		}
		
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







