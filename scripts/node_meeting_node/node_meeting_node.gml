
/// @desc Returns if a node is meeting another node

/// @param	inst
/// @param	inst2

var a = argument[0];
var b = argument[1];

return rectangle_in_rectangle(a.x, a.y, a.x+width, a.y+height, b.x, b.y, b.x+width, b.y+height);