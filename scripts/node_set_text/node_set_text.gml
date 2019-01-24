
/// @desc	Sets node text

/// @param	id
/// @param	body
/// @param	header*

var _body = argument[1];

var _header = undefined;
if(argument_count == 3)
	_header = argument[2];

with(argument[0])
{
	// Set text
	body = _body;
	
	// Set header
	if(!is_undefined(_header)) header = _header;
	
	// Set width/height
	draw_set_font(fntBody);
	width = string_width(_body) + text_margin_w*2;
	height = string_height(_body+" ") + text_margin_h*2;
	if !(is_undefined(header) || header == "")
	{
		draw_set_font(fntHeader);
		width = max(width, string_width(header) + text_margin_w*2);
		height += string_height(header) + text_margin_h;
	}
}