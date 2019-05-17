
// Create nodes
if(!global.hovering_icon && mouse_check_button_pressed(mb_left) && !hovering_over_node() && !hovering_over_nodebubble())
{
	with(NodeBubble) instance_destroy();
	with(instance_create(mouse_x, mouse_y, Node))
	{
		x -= round(width*0.1);
		y -= round(height*0.1);
	}
}

// De-select
if(mouse_check_button_pressed(mb_right))
{
	// Stop linking
	global.link = noone;
	// De-select bubble
	if(instance_exists(NodeBubble))
		with(NodeBubble) instance_destroy();
	// De-select node
	else global.last_interacted = noone;
}

// Node step
global.node_interacted = false;
var _arr = instance_sorted_array(Node);
for(var i = array_length_1d(_arr)-1; i >= 0; i--)
	with(_arr[i]) node_step(id);

// Arrange up/down
if(!instance_exists(NodeBubble))
{
	var _up = keyboard_check_pressed(vk_up);
	var _down = keyboard_check_pressed(vk_down);
	if(_up ^^ _down)
		with(global.last_interacted)
		{
			index = clamp(index + _up - _down, node_lowest_index()-1, node_highest_index()+1);
		}
}

// Delete node
if(keyboard_check_pressed(vk_delete) && !instance_exists(NodeBubble))
{
	with(global.last_interacted)
		instance_destroy();
	global.last_interacted = noone;
}

// Workspace panning
if(mouse_check_button_pressed(mb_middle))
{
	panning = true;
	pan_start_x = gui_mouse_x;
	pan_start_y = gui_mouse_y;
}
else if(panning)
{
	if(mouse_check_button_released(mb_middle))
		panning = false;
	else if(mouse_check_button(mb_middle))
	{
		global._cam_x += pan_start_x - gui_mouse_x;
		global._cam_y += pan_start_y - gui_mouse_y;
		pan_start_x = gui_mouse_x;
		pan_start_y = gui_mouse_y;
	}
}

// Fix size of camera
var _w = lerp(cam_w, window_get_width()*global.cam_zoom, 0.1);
var _h = lerp(cam_h, window_get_height()*global.cam_zoom, 0.1);
camera_set_view_size(cam, _w, _h);

// Position camera
camera_set_view_pos(cam, global._cam_x - cam_w/2, global._cam_y - cam_h/2);