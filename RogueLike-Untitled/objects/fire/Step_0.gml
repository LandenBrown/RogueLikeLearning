/// @description Insert description here
// You can write your code in this editor
widthOfTheScreen = window_get_width();

if distance_to_object(Player)<=widthOfTheScreen{    //prevents Bowser from running across the map to get you
      if (collision_line(x,y,Player.x,Player.y,Fire,true,true) = noone) {
           direction=point_direction(x,y,Player.x,Player.y);
           speed= monsterSpeed;
    }
}


if monsterHealth <= 0 {

	instance_destroy();

}

