
/// @desc Load everything, returns if successful

// Delete existing nodes

with(NodeBubble) instance_destroy();
with(Node) instance_destroy();

// Get directory of file

var _dir = get_open_filename("*.organizer", "");

// Open file

var _file = file_text_open_read_ns(_dir, -1);

// Read file

var i = 0;
var _arr = [];
while(true)
{
	var _line = file_text_read_line_ns(_file);
	if(_line == "") break;
	else _arr[i++] = _line;
}

// Close file

file_text_close_ns(_file);

// Load

return organizer_load_array(_arr);