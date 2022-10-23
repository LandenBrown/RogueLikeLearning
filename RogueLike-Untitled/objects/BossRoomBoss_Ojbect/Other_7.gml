/// @description Insert description here
// You can write your code in this editor


//Random Directions for projectiles
randomdir1_x = irandom_range(0, room_width)
randomdir1_y = irandom_range(0, room_height)
//
randomdir2_x = irandom_range(0, room_width)
randomdir2_y = irandom_range(0, room_height)
//
randomdir3_x = irandom_range(0, room_width)
randomdir3_y = irandom_range(0, room_height)

if sprite_index = BossRoom_Boss_Sprite{
	with(instance_create_depth(x,y, 0, MonkeyRockObject))
		{
			image_angle = point_direction(x,y,randomdir1_x,randomdir1_y);
			speed = 15;
			direction = other.image_angle;
			image_angle = direction;
		};
	with(instance_create_depth(x,y, 0, MonkeyRockObject))
		{
			image_angle = point_direction(x,y,randomdir2_x,randomdir2_y);
			speed = 15;
			direction = other.image_angle;
			image_angle = direction;
		};
	with(instance_create_depth(x,y, 0, MonkeyRockObject))
		{
			image_angle = point_direction(x,y,randomdir3_x,randomdir3_y);
			speed = 15;
			direction = other.image_angle;
			image_angle = direction;
		};
}


