/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left)){x -= 3};
if(keyboard_check(vk_right)){x += 3};
if(keyboard_check(vk_up)){y -= 3};
if(keyboard_check(vk_down)){y += 3};

//Point direction
image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay -1;
if (mouse_check_button_pressed(mb_left)) && (firingdelay < 0){
	firingdelay = 5;
	//Applies to object not player
	with(instance_create_layer(x,y, "BulletLayer", Projectile_Object))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
		
	};
	
	
};



if global.Player_Health <= 0{
	instance_destroy();
	//game_end();
};


if global.Taking_Damage == true {
	
	instance_create_depth(x, y, 100, Taking_Damage_Object);
	global.Taking_Damage = false;
}