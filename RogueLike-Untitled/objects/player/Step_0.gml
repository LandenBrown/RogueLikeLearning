/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left)){x -= 3};
if(keyboard_check(vk_right)){x += 3};
if(keyboard_check(vk_up)){y -= 3};
if(keyboard_check(vk_down)){y += 3};

if global.Player_Health <= 0{
	game_end();
};


if global.Taking_Damage == true {
	
	instance_create_depth(x, y, 100, Taking_Damage_Object);
	global.Taking_Damage = false;
}