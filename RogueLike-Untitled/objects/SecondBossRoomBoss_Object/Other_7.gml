/// @description Insert description here
// You can write your code in this editor


function get_random_direction(set){
	randomise()
	num = irandom_range(0, set)
	return num;
}

image_angle = point_direction(x,y,get_random_direction(room_width),get_random_direction(room_height));
if sprite_index = SecondBossRoom_Boss_Sprite{
	//Random Directions for projectiles
	
	with(instance_create_depth(x,y, 0, SecondBossProjectile))
		{
			randomdir2_x = irandom_range(0, room_width);
			randomdir2_y = irandom_range(0, room_height);
			image_angle = point_direction(x,y,randomdir2_x,randomdir2_y);
			speed = 15;
			direction = other.image_angle;
			image_angle = direction;
		};
	with(instance_create_depth(x,y, 0, SecondBossProjectile))
		{
			randomdir2_x = irandom_range(0, room_width);
			randomdir2_y = irandom_range(0, room_height);
			image_angle = point_direction(x,y,randomdir2_x,randomdir2_y);
			speed = 15;
			direction = other.image_angle;
			image_angle = direction;
		};
	with(instance_create_depth(x,y, 0, SecondBossProjectile))
		{
			randomdir3_x = irandom_range(0, room_width);
			randomdir3_y = irandom_range(0, room_height);
			image_angle = point_direction(x,y,randomdir3_x,randomdir3_y);
			speed = 15;
			direction = other.image_angle;
			image_angle = direction;
		};
}


