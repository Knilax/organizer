
/// @desc	Returns size of checkbox

if(ds_list_empty(checkboxes)) return 0;
else
{
	draw_set_font(fntBody);
	var _map = checkboxes[|0];
	return string_height(_map[?"desc"])*0.8;
}