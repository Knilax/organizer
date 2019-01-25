
/// @desc	Draw a node
/// @param	instance

with(argument[0])
{
	
	// Modified width and height
	var _width = width;
	var _height = height;
	
	// Modified text
	var _header = header;
	var _body = body;
	
	// If typing header and header is empty, empty space
	if(typing_header && _header == "")
	{
		_header = " ";
		draw_set_font(fntHeader);
		_height += string_height(_header) + text_margin_h;
	}
	
	// Selected base
	if(global.last_interacted == id)
	{
		draw_set_color(c_black);
		var _outline_size = 3;
		draw_rectangle(x-_outline_size, y-_outline_size, x+_width+_outline_size, y+_height+_outline_size, false);
	}
	
	// Base
	draw_set_color(color);
	draw_rectangle(x, y, x+_width, y+_height, false);
	
	// Shadow
	draw_sprite_ext(sprShadow, 0, x, y+_height, _width+1, 1, 0, c_white, image_alpha);
	
	// Text
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	var _text = [_header, _body];
	var _x = x + text_margin_w;
	var _y = y + text_margin_h;
	for(var i = 0; i <= 1; i++)
	{
		
		// Skip if no header
		if(i == 0 && (_header == "" || is_undefined(_header)))
			continue;
		
		var _str = _text[i];
		// Font
		if(i == 0) draw_set_font(fntHeader);
		else if(i == 1) draw_set_font(fntBody);
		// Draw
		draw_set_halign(fa_left);
		draw_text(_x, _y, _str);
		_y += string_height(_str) + text_margin_h;
	}
	
	// Pipe
	if(typing && typing_pipe_enabled)
	{
		draw_set_font((typing_header) ? fntHeader : fntBody);
		var _cut_text = string_copy((typing_header) ? _header : _body, 1, insert_pos);
		var _this_line_num = string_lines_from_index(_cut_text, insert_pos);
		var _this_line_cut = string_get_line(_cut_text, _this_line_num);
		var _cut_text_width = string_width(_this_line_cut);
		draw_set_font(fntBody);
		var _avg_height = string_height("l");
		draw_set_font(fntHeader);
		var _header_height = string_height(_header);
		
		// Positions for header
		var __x = x + text_margin_w + _cut_text_width;
		var __y = y + text_margin_h*2 + _avg_height*_this_line_num;
		// Move position down for body
		if(!typing_header && _header != "")
		{
			__y += text_margin_h + _header_height;
		}
		// Draw pipe
		draw_line(__x, __y - _avg_height/2, __x, __y + _avg_height/2);
	}

}