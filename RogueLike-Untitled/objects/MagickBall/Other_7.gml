/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y);
with(instance_create_depth(x,y, 0, MagickBallTravel))
		{
			speed = 10;
			direction = other.image_angle;
		};
instance_destroy();

