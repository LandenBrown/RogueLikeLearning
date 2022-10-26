/// @description Insert description here
// You can write your code in this editor



global.PlayerX = x;
global.PlayerY = y;
if(keyboard_check(vk_left)){x -= 3};
if(keyboard_check(vk_right)){x += 3};
if(keyboard_check(vk_up)){y -= 3};
if(keyboard_check(vk_down)){y += 3};

//Point direction


firingdelay = firingdelay -1;

if (mouse_check_button(mb_left)) && (firingdelay < 0){
	fire_Primary();
};



if Player_Health <= 0{
	SaveGame();
	instance_destroy();
	//game_end();
	game_restart()
};


if Taking_Damage == true {
	
	instance_create_depth(x, y, 0, Taking_Damage_Object);
	Taking_Damage = false;
}