
// Shadow
draw_sprite_ext(sprShadow, 0, x, y+height, width+1, 1, 0, c_white, image_alpha);

// Base
draw_set_color(c_white);
draw_rectangle(x, y, x+width, y+height, false);

// Arrow
draw_triangle(arrow_x-arrow_size, y+height, arrow_x+arrow_size, y+height, arrow_x, y+height+arrow_size, false);

// Draw options
var _x = x + margin_h;
draw_set_font(fntBody);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var _s = NodeBubble_checkbox_size();
for(var i = 0; i < ds_list_size(checkboxes); i++)
{
	var _y = NodeBubble_checkbox_y(i);
	
	// Checkbox
	var _map = checkboxes[|i];
	draw_set_color(c_black);
	draw_rectangle(_x, _y, _x+_s, _y+_s, false);
	draw_set_color((_map[?"enabled"]) ? c_white : c_black);
	var _stroke_size = 2;
	draw_rectangle(_x+_stroke_size, _y+_stroke_size, _x+_s-_stroke_size, _y+_s-_stroke_size, false);
	draw_set_color(c_black);
	draw_text(_x + _s+margin_h, _y, _map[?"desc"]);
}