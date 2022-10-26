Player_Health = 1000;

Player_Max_Health = 1000;

Taking_Damage = false; 

firingdelay = 0;

characterSpriteIndex = "";
characterDamageSpriteIndex = "";

global.attacks_count = 0;

PrimaryWeapon = "";

global.MagickPoolSpawn_x = 0;
global.MagickPoolSpawn_y = 0;


//Assigning character sprite indexs 
if global.CharacterChoice == "Destin" {
	characterSpriteIndex = DestinCharacterSprite;
	characterDamageSpriteIndex = DestinTakingDamage;
	PrimaryWeapon = "bullet";
}
else if global.CharacterChoice == "Mearch" {
	characterSpriteIndex = MearchCharacterSprite;
	characterDamageSpriteIndex = MearchTakingDamage;
	PrimaryWeapon = "magick-ball";
}

sprite_index = characterSpriteIndex;
image_angle = point_direction(x,y,mouse_x,mouse_y);

function fire_Primary() {
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	firingdelay = 5;
	//Applies to object not player
	global.attacks_count += 1;
	if PrimaryWeapon == "bullet"{
		with(instance_create_depth(x,y, 0, Bullet_Object))
		{
			speed = 25;
			direction = other.image_angle;
			image_angle = direction;
		};
	};
	else if PrimaryWeapon == "tri-bullet"{
		with(instance_create_depth(x,y, 0, Bullet_Object))
		{
			speed = 25;
			direction = other.image_angle;
			image_angle = direction;
		};
		with(instance_create_depth(x,y, 0, Bullet_Object))
		{
			speed = 25;
			direction = other.image_angle+15;
			image_angle = direction+15;
		};
		with(instance_create_depth(x,y, 0, Bullet_Object))
		{
			speed = 25;
			direction = other.image_angle-15;
			image_angle = direction-15;
		};
	};
	else if PrimaryWeapon == "magick-ball"{
		with(instance_create_depth(x,y, 0, MagickBall))
		{
			global.MagickPoolSpawn_x = mouse_x;
			global.MagickPoolSpawn_y = mouse_y;
			speed = 0;
			direction = other.image_angle;
			image_angle = direction-90;
		};
	};
	};


function SaveGame() {
	
	ini_open("saved.save");
	ini_write_real("Player Variables", "Silver", int64(global.SilverCoins));
	ini_write_real("Player Variables", "Gold", int64(global.GoldCoins));
	ini_write_real("Player Variables", "Max Stage", int64(global.maxStage));
	ini_close();

};