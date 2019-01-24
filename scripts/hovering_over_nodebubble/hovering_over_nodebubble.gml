
/// @desc	Returns if hovering over a node bubble

/// @param	instance*

var _target = NodeBubble;
if(argument_count == 1) _target = argument[0];

with(_target)
	if(point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height))
		return true;

return false;