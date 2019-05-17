
/// @desc	Adds a checkbox

/// @param	desc
/// @param	script
/// @param	enabled*

var _enabled = false;
if(argument_count == 3) _enabled = argument[2];

var _map = ds_map_create();

ds_map_add(_map, "enabled", _enabled);
ds_map_add(_map, "desc", argument[0]);
ds_map_add(_map, "on_click", argument[1]);
ds_map_add(_map, "colorperc", 0);

ds_list_add(checkboxes, _map);

height += NodeBubble_checkbox_size() + NODEBUBBLE_MARGIN_V;