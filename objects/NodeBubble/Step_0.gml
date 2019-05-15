
// Lerp to desired position
x = lerp(x, nodebubble_desired_x(id), 0.1);
y = lerp(y, nodebubble_desired_y(id), 0.1);
arrow_x = lerp(arrow_x, creator.x + creator.width/2, 0.15);
arrow_x = clamp(arrow_x, x+arrow_size, x+width-arrow_size);

// Options
var _row = 0;
// Checkboxes
for(var i = 0; i < ds_list_size(checkboxes); i++)
{
	var _x = x + margin_h;
	var _y = NodeBubble_checkbox_y(_row++);
	var _s = NodeBubble_checkbox_size();
	if(point_in_rectangle(mouse_x, mouse_y, _x, _y, _x+_s, _y+_s))
	{
		global.hovering_clickable = true;
		if(mouse_check_button_pressed(mb_left))
		{
			var _map = checkboxes[|i];
			script_execute(_map[?"on_click"], i);
			if(_map[?"enabled"] != -1)
				_map[?"enabled"] = !_map[?"enabled"];
		}
	}
}
// Colors
for(var i = 0; i < ds_list_size(colors); i++)
{
	var _x = x + margin_h*(i+1) + _s*i;
	var _y = NodeBubble_checkbox_y(_row);
	var _s = NodeBubble_checkbox_size();
	if(point_in_rectangle(mouse_x, mouse_y, _x, _y, _x+_s, _y+_s))
	{
		global.hovering_clickable = true;
		if(mouse_check_button_pressed(mb_left))
			with(creator) color = other.colors[|i];
	}
}

// Holding backspace
if(keyboard_check(vk_backspace))
{
	if(backspace_holding_alarm >= 1) backspace_holding_alarm--;
	else
	{
		// Deleting
		if(backspace_delete_alarm >= 1) backspace_delete_alarm--;
		else
		{
			backspace_delete_alarm += BACKSPACE_DELETE_ALARM;
			// Backspace
			creator.body = string_delete(creator.body, creator.insert_pos, 1);
			creator.insert_pos = max(creator.insert_pos-1, 0);
			// Fix text
			node_set_text(creator, creator.body);
		}
	}
}
else
{
	backspace_holding_alarm = BACKSPACE_HOLDING_ALARM;
	backspace_delete_alarm = BACKSPACE_DELETE_ALARM;
}

// Move pipe
var _right = keyboard_check_pressed(vk_right);
var _up = keyboard_check_pressed(vk_up);
var _left = keyboard_check_pressed(vk_left);
var _down = keyboard_check_pressed(vk_down);
if((_right ^^ _left) || (_up ^^ _down))
	with(creator)
	{
		// Header
		if(typing_header)
		{
			insert_pos = move_cursor(header, insert_pos, _right - _left);
			if(_up) insert_pos = move_cursor_up(header, insert_pos);
			else if(_down)
			{
				if(insert_pos == string_length(header))
				{
					typing_header = false;
					insert_pos = 0;
				}
				else insert_pos = move_cursor_down(header, insert_pos);
			}
		}
		// Body
		else
		{
			insert_pos = move_cursor(body, insert_pos, _right - _left);
			if(_up)
			{
				if(insert_pos == 0)
				{
					typing_header = true;
					insert_pos = string_length(header);
				}
				else insert_pos = move_cursor_up(body, insert_pos);
			}
			else if(_down) insert_pos = move_cursor_down(body, insert_pos);
		}
	}

// Typing
if(keyboard_check_pressed(vk_anykey))
{
	if(keyboard_check_pressed(vk_backspace))
	{
		if(creator.typing_header)
			creator.header = string_delete(creator.header, creator.insert_pos, 1);
		else creator.body = string_delete(creator.body, creator.insert_pos, 1);
		creator.insert_pos = max(creator.insert_pos-1, 0);
	}
	else if(keyboard_check_pressed(vk_enter))
	{
		creator.insert_pos += 1;
		if(creator.typing_header)
			creator.header = string_insert("\n", creator.header, creator.insert_pos);
		else creator.body = string_insert("\n", creator.body, creator.insert_pos);
	}
	else
	{
		var _chars = keyboard_string;
		creator.insert_pos += string_length(_chars);
		if(creator.typing_header)
			creator.header = string_insert(_chars, creator.header, creator.insert_pos);
		else creator.body = string_insert(_chars, creator.body, creator.insert_pos);
	}
	
	// Typing pipe is enabled
	creator.typing_pipe_enabled = true;
	alarm[0] = TYPING_PIPE_TOGGLE;
	
	// Fix text
	node_set_text(creator, creator.body);
	
	// Clear keyboard string
	keyboard_string = "";
}