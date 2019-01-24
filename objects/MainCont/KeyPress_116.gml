
/// @desc	Save

var _str = "";

// Camera
_str += "camera{x:" + string(global._cam_x) + ",y:" + string(global._cam_y) + "},";

// Nodes
with(Node)
{
	_str += "Node{";
	_str += "x:"		+ string(x)			+ ",";
	_str += "y:"		+ string(y)			+ ",";
	_str += "width:"	+ string(width)		+ ",";
	_str += "height:"	+ string(height);
	_str += "},";
}

// Cut off last comma
_str = string_copy(_str, 1, string_length(_str)-1);

// Display
show_message("Copied to clipboard!");
clipboard_set_text(base64_encode(_str));