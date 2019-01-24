
/// @desc	Returns y position of given checkbox index in checkboxes list

/// @param	index

var _index = argument[0];

var _map = checkboxes[|_index];
var _desc = _map[?"desc"];

draw_set_font(fntBody);
return y + margin_v + _index*(string_height(_map[?"desc"]) + margin_v*0.5);