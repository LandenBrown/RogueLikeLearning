global.Player_Health = 100;

global.Player_Max_Health = 100;

global.Taking_Damage = false; 

firingdelay = 0;

global.attacks_count = 0;


currentWeapon = "tri-bullet";


function SaveGame() {
	
	ini_open("saved.save");
	ini_write_real("Player Variables", "Silver", int64(global.SilverCoins));
	ini_write_real("Player Variables", "Gold", int64(global.GoldCoins));
	ini_close();

};