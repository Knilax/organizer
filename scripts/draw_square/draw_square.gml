
/// @desc	Draws a square

/// @param	x
/// @param	y
/// @param	r
/// @param	outline

var _x = argument[0];
var _y = argument[1];
var _r = argument[2];
draw_rectangle(_x-_r, _y-_r, _x+_r, _y+_r, argument[3]);