
/// @desc	Returns if mouse is on a node

/// @param	instance*

var _target = Node;
if(argument_count == 1) _target = argument[0];

with(_target)
	if(point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height))
		return !hovering_over_nodebubble();

return false;