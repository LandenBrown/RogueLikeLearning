Player_Health = 1000;

Player_Max_Health = 1000;

Taking_Damage = false; 

firingdelay = 0;

characterSpriteIndex = "";
characterDamageSpriteIndex = "";

global.attacks_count = 0;

PrimaryWeapon = "";


//Assigning character sprite indexs 
if global.CharacterChoice == "Destin" {
	characterSpriteIndex = DestinCharacterSprite;
	characterDamageSpriteIndex = DestinTakingDamage;
	PrimaryWeapon = "bullet";
}
else if global.CharacterChoice == "Mearch" {
	characterSpriteIndex = MearchCharacterSprite;
	characterDamageSpriteIndex = MearchTakingDamage;
	PrimaryWeapon = "tri-bullet";
}

sprite_index = characterSpriteIndex;


function SaveGame() {
	
	ini_open("saved.save");
	ini_write_real("Player Variables", "Silver", int64(global.SilverCoins));
	ini_write_real("Player Variables", "Gold", int64(global.GoldCoins));
	ini_write_real("Player Variables", "Max Stage", int64(global.maxStage));
	ini_close();

};