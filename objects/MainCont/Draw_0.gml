
// Sorted array of nodes
var _arr = instance_sorted_array(Node);

// Draw links before nodes
for(var i = 0; i < array_length_1d(_arr); i++)
	with(_arr[i])
	{
		var _new_arr = [], _pos = 0;
		draw_set_color(c_black);
		for(var j = 0; j < array_length_1d(linked); j++)
		{
			var _inst = node_instance_from_id(linked[j]);
			if(instance_exists(_inst))
			{
				_new_arr[_pos++] = linked[j];
				var _s = 6.5;
				var _x0 = x + width/2;
				var _y0 = y + height/2;
				var _x1 = _inst.x + _inst.width/2;
				var _y1 = _inst.y + _inst.height/2;
				draw_line_width(_x0, _y0, _x1, _y1, _s);
			}
		}
		linked = _new_arr;
	}

// Draw by index
for(var i = 0; i < array_length_1d(_arr); i++)
	with(_arr[i]) node_draw(id);

// Draw link to mouse
with(global.link)
	draw_line_width(x + width/2, y + height/2, mouse_x, mouse_y, 6.5);