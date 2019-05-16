
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
		// Zoom
		case 3:
			var _zooms = [0.5, 0.75, 1, 1.25, 1.5];
			for(var i = 0; i < array_length_1d(_zooms); i++)
				if(_zooms[i] == global.cam_zoom)
				{
					var _pos = i+1;
					if(_pos > array_length_1d(_zooms)-1) _pos = 0;
					global.cam_zoom = _zooms[_pos];
					break;
				}
			break;
		// Help
		case 4:
			url_open("http://bfy.tw/3nV");
			break;
	}