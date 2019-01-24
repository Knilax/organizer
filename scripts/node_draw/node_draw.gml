
/// @desc	Draw a node
/// @param	instance

with(argument[0])
{
	
	// Selected base
	if(global.last_interacted == id)
	{
		draw_set_color(c_black);
		var _outline_size = 3;
		draw_rectangle(x-_outline_size, y-_outline_size, x+width+_outline_size, y+height+_outline_size, false);
	}
	
	// Base
	draw_set_color(c_white);
	draw_rectangle(x, y, x+width, y+height, false);
	
	// Shadow
	draw_sprite_ext(sprShadow, 0, x, y+height, width+1, 1, 0, c_white, image_alpha);
	
	// Text
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	var _text = [header, body];
	var _x = x + text_margin_w;
	var _y = y + text_margin_h;
	for(var i = 0; i <= 1; i++)
	{
		
		// Skip if no header
		if(i == 0 && (header == "" || is_undefined(header)))
			continue;
		
		var _str = _text[i];
		// Font
		if(i == 0) draw_set_font(fntHeader);
		else if(i == 1) draw_set_font(fntBody);
		// Body/header
		switch(i)
		{
			// Body
			case 1:
				if(body_align == fa_left)
				{
					draw_set_halign(fa_left);
					draw_text(_x, _y, _str);
					break;
				}
				else if(body_align == fa_right)
				{
					draw_set_halign(fa_right);
					draw_text(_x - text_margin_w*2 + width, _y, _str);
					break;
				}
			// Header
			case 0:
				draw_set_halign(fa_center);
				var __x = _x - text_margin_w + width/2;
				draw_text(__x, _y, _str);
				break;
		}
		_y += string_height(_str) + text_margin_h;
	}
	
	// Pipe
	if(typing && typing_pipe_enabled)
	{
		var _body = string_copy(body, 1, insert_pos);
		var __x = x + text_margin_w + string_width(string_get_line(_body, string_lines_from_index(_body, insert_pos)));
		var __y = y + text_margin_h*2 + string_height("l")*string_lines_from_index(body, insert_pos);
		draw_line(__x, __y - string_height("l")/2, __x, __y + string_height("l")/2);
	}

}