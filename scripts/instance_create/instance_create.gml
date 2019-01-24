
/// @desc	Alias of instance_create_depth()

/// @param	x
/// @param	y
/// @param	obj
/// @param	dep*

var _x = argument[0];
var _y = argument[1];
var obj = argument[2];
var dep = 0; if(argument_count == 4) dep = argument[3];

return instance_create_depth(_x, _y, dep, obj);