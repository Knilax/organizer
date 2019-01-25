
/// @desc	Save

var _str = "";

// Camera
_str += "camera{zoom:\"" + string(global.cam_zoom) +"\",x:\"" + string(global._cam_x) + "\",y:\"" + string(global._cam_y) + "\"},";

// Nodes
with(Node)
{
	// Fix body text
	var _body = string_replace_all(body, "\"", chr(92)+chr(34)); // Add a forward slash before quotes
	
	// Get links
	var _links = "[";
	var _len = array_length_1d(linked);
	for(var i = 0; i < _len; i++)
	{
		_links += string(linked[i]);
		if(i < _len-1) _links += ",";
	}
	_links += "]";
	
	// Form string
	_str += "Node{";
	_str += "node_id:\""+ string(node_id)	+ "\",";
	_str += "x:\""		+ string(x)			+ "\",";
	_str += "y:\""		+ string(y)			+ "\",";
	_str += "index:\""	+ string(index)		+ "\",";
	_str += "color:\""	+ string(color)		+ "\",";
	_str += "header:\""	+ string(header)	+ "\",";
	_str += "body:\""	+ string(_body)		+ "\",";
	_str += "linked:"	+ _links;
	_str += "},";
}

// Cut off last comma
_str = string_copy(_str, 1, string_length(_str)-1);

// Get directory of file
var _dir = get_save_filename("*.organizer", "")+".organizer";

// Open file
var _file = file_text_open_write_ns(_dir, -1);

// Write file
file_text_write_line_ns(_file, _str);

// Close file
file_text_close_ns(_file);
