
// Lerp to position

xprevious = x;
yprevious = y;
x = cam_x + xoff;
y = cam_y + yoff;

if(point_distance(x, y, xprevious, yprevious) < 10) image_angle = lerp(image_angle, 0, 0.2);
else
{
	var _turn_right = (xprevious < x);
	image_angle = lerp(image_angle, (_turn_right) ? -45 : 45, 0.01);
}

// Click

if(hover && mouse_check_button_pressed(mb_left))
	switch(index)
	{
		// New organizer
		case 0:
			organizer_new();
			break;
		// Save organizer
		case 1:
			organizer_save();
			break;
		// Load organizer
		case 2:
			organizer_load();
			break;
	}