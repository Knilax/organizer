
// Hover grow in scale

hover = false;

var _des_scale = 1;
if(!global.hovering_icon)
{
	var _size = sprite_get_width(sprIcon)/2 + 4;
	global.hovering_icon = point_in_rectangle(gui_mouse_x, gui_mouse_y, xoff-_size, yoff-_size, xoff+_size, yoff+_size);
	hover = global.hovering_icon;
	_des_scale += 0.15*global.hovering_icon;
}
image_xscale = lerp(image_xscale, _des_scale, 0.1);
image_yscale = image_xscale;