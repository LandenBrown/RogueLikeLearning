/// @description Insert description here
// You can write your code in this editor


if global.Player_Health > .0001 {
	   if (collision_line(x,y,Player.x,Player.y,Fire,true,true) = noone) {
	        direction=point_direction(x,y,Player.x,Player.y);
	        speed= monsterSpeed;
	}
}

else{
	speed = 0;
}

if monsterHealth <= 0 {
	
	chance = random_range(1,100);
	if chance <= 10{
		instance_create_depth(x, y, 0, Bullet_Upgrade);
	}
	instance_create_depth(x, y, 0, obj_OrangeBlock_Dead);
	instance_destroy();
	global.monsters_left -= 1;
	global.GoldCoins += 1;
	global.InBossStage = false;
	

}

damage_delay -= 1;

