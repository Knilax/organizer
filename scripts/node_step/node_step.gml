
/// @desc	Performs a node's step code
/// @param	instance

with(argument[0])
{

	// Interactions
	if(!global.node_interacted)
	{
		
		// Bubble
		if(mouse_check_button_pressed(mb_right) && hovering_over_node(id))
		{
			global.node_interacted = true;
			global.last_interacted = id;
			index = node_highest_index()+1;
			typing = true;
			with(instance_create(0, 0, NodeBubble, DEP_BUBBLE))
			{
				creator = other;
				x = nodebubble_desired_x(id);
				y = nodebubble_desired_y(id) - 15;
				arrow_x = x + width/2;
			}
		}
		
		// Linking
		if(double_click_time > 0 && mouse_check_button_pressed(mb_left) && hovering_over_node(id))
			global.link = id;
		
		// Grab
		else if(!grabbed)
		{
			if(!locked && mouse_check_button_pressed(mb_left) && hovering_over_node(id))
			{
				// Linked to
				if(instance_exists(global.link) && global.link != id)
				{
					with(global.link)
						linked = array_add_1d(linked, other);
					global.link = noone;
				}
				
				double_click_time = DOUBLE_CLICK_TIME;
				global.node_interacted = true;
				global.last_interacted = id;
				grabbed = true;
				grab_off_x = mouse_x - x;
				grab_off_y = mouse_y - y;
			}
		}
		else
		{
			if(mouse_check_button_released(mb_left))
				grabbed = false;
			else if(mouse_check_button(mb_left))
			{
				x = lerp(x, mouse_x - grab_off_x, 0.25);
				y = lerp(y, mouse_y - grab_off_y, 0.25);
			}
		}
	}
	
	// Lower double-click time
	if(double_click_time > 0) double_click_time -= 1;

}