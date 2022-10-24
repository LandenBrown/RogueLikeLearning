/// @description Insert description here
// You can write your code in this editor
//Initial Difficulties
global.total_enemies = 3;
global.spawn_monster_count = global.total_enemies;
global.monsters_left = global.spawn_monster_count;
global.difficulty_modifier = 1;
global.currentStage = 1;
global.maxStage = 1;
global.monster_limit = 15;
global.bossStage = false;
global.bossStageName = "";
global.InBossStage = false;


//Room Management
nextRoom = Room1;
global.currentRoom = Room1;
global.unique_Rooms_Array = [Room1, UniqueRoom, BossRoom];

//Room Enemies
global.spawnable_Monster_Array = [Fire, MonkeyObject];
global.Unique_Room_Monster_Array = [MonkeyObject];
global.Boss_Room_Monster_Array = [BossRoomBoss_Ojbect];

//Weapon Damages
global.Bullet_Damage = 10;


//Spawn monsters or no
global.needsSpawn = false;




//Enemy Projectile Damage
global.Rock_Damage = 3;
global.SilverCoins = 0;
global.GoldCoins = 0;


//Room Setup
global.currentMonsterArray = global.spawnable_Monster_Array;


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


//Create particle system
global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100);

function check_Stage(){
	randomise();
	if global.currentStage = 5 {
		global.currentMonsterArray = global.Boss_Room_Monster_Array;
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, GalaxySnailRoomSprite);
		global.bossStage = true;
		global.bossStageName = "First Boss";
	}
	else{
		global.currentMonsterArray = global.spawnable_Monster_Array;
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, StandardRoomSprite);
		global.bossStage = false;
		//Test gitpush
	}
	
}






function calculate_difficulty() {

	if global.attacks_count <= 14{
		global.difficulty_modifier = 1.6;
	}
	else if global.attacks_count <= 30 {
		global.difficulty_modifier = 1.5;
	}
	else if global.attacks_count <= 75 {
		global.difficulty_modifier = 1.4;
	}
	global.attacks_count = 0;
	
}
function check_remaining_monsters() {
	
	if global.monsters_left <= 0 {
		//check_Room(global.unique_Rooms_Array);
		calculate_difficulty();
		global.total_enemies = round((global.total_enemies*global.difficulty_modifier));
		global.spawn_monster_count = global.total_enemies;
		global.currentStage += 1;
		global.monsters_left = global.spawn_monster_count;
		global.monsters_left = int64(global.monsters_left);
		show_debug_message("Current Stage Complete!");
		if global.currentStage > global.maxStage {
			global.maxStage = global.currentStage;
		}
	check_Stage();
		//nextRoom = check_Room(global.unique_Rooms_Array);
		//room_goto(nextRoom);
	}
}

function check_spawn_monsters() {
	
	if global.bossStage == true and global.InBossStage == false{
		if global.bossStageName == "First Boss" {
			center_x = (room_width/2);
			center_y = (room_height/2);
			instance_create_depth(center_x, center_y, 0, BossRoomBoss_Ojbect);
			global.InBossStage = true;
			global.monsters_left = 1;
		}
	} 
	else if global.spawn_monster_count != 0 and global.InBossStage == false {
		//if global.needsSpawn != true {
		//	Room = check_Room(global.unique_Rooms_Array);
		//	room_goto(Room);
		//	global.needsSpawn = false;
		//	show_debug_message("Just changed my goddam room")
		//}
		
		show_debug_message("MY CURRENT ROOM IS: " + string(room));
		//check_Room(global.unique_Rooms_Array);
		show_debug_message("Current Monster array is " + string(global.currentMonsterArray));
		
		//room_array_size = int64(array_length(_roomArray) - 1);
		while global.spawn_monster_count != 0 {
			show_debug_message("Entering While loop while monster count is " + string(global.spawn_monster_count));
			randomise();
			//Declare temporary variable for whatever current monster array to spawn/pull from
			//Set what room we are i
			//spawn enemies
			MaxMonsterInArray = int64(array_length(global.currentMonsterArray)-1);
			show_debug_message(MaxMonsterInArray);
			randommonster = int64(irandom_range(0, MaxMonsterInArray));
			show_debug_message("Current Monster array length is " + string(MaxMonsterInArray));
			show_debug_message("Random Monster is: " + string(randommonster));
			random_x = random_range(0, room_width);
			random_y = random_range(0, room_height);
			instance_create_depth(random_x, random_y, 0, global.currentMonsterArray[randommonster]);
			global.spawn_monster_count -= 1;
			show_debug_message("Spawned one Monster!")
		
		}
		show_debug_message("Just left while loop, all monsters spawned");
		global.needsSpawn = true;
		
	}
}






