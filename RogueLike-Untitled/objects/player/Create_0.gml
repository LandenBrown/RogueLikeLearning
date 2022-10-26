Player_Health = 1000;

Player_Max_Health = 1000;

Taking_Damage = false; 

firingdelay = 0;

global.attacks_count = 0;


currentWeapon = "tri-bullet";


function SaveGame() {
	
	ini_open("saved.save");
	ini_write_real("Player Variables", "Silver", int64(global.SilverCoins));
	ini_write_real("Player Variables", "Gold", int64(global.GoldCoins));
	ini_write_real("Player Variables", "Max Stage", int64(global.maxStage));
	ini_close();

};