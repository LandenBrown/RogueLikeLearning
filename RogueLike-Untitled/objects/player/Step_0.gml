/// @description Insert description here
// You can write your code in this editor


global.PlayerX = x;
global.PlayerY = y;
if(keyboard_check(vk_left)){x -= 3};
if(keyboard_check(vk_right)){x += 3};
if(keyboard_check(vk_up)){y -= 3};
if(keyboard_check(vk_down)){y += 3};

//Point direction
image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay -1;

if (mouse_check_button(mb_left)) && (firingdelay < 0){
	firingdelay = 5;
	//Applies to object not player
	global.attacks_count += 1;
	if currentWeapon == "bullet"{
		with(instance_create_depth(x,y, 0, Bullet_Object))
		{
			speed = 25;
			direction = other.image_angle;
			image_angle = direction;
		};
	};
	if currentWeapon == "tri-bullet"{
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
};



if global.Player_Health <= 0{
	SaveGame();
	instance_destroy();
	//game_end();
	game_restart()
};


if global.Taking_Damage == true {
	
	instance_create_depth(x, y, 0, Taking_Damage_Object);
	global.Taking_Damage = false;
}