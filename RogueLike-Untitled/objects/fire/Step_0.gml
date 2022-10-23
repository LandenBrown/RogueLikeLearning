/// @description Insert description here
// You can write your code in this editor
widthOfTheScreen = window_get_width();


if global.Player_Health > 1 {
	if distance_to_object(Player)<=widthOfTheScreen{    //prevents Bowser from running across the map to get you
	      if (collision_line(x,y,Player.x,Player.y,Fire,true,true) = noone) {
	           direction=point_direction(x,y,Player.x,Player.y);
	           speed= monsterSpeed;
	    }
	}
}

else{
	speed = 0;
}

if monsterid.monsterHealth <= 0 {

	instance_destroy();
	global.monsters_left -= 1;

}

damage_delay -= 1;

