
/// @desc	Load

// Delete existing nodes
with(NodeBubble) instance_destroy();
with(Node) instance_destroy();

// Get directory of file
var _dir = get_open_filename("*.organizer", "");

// Open file
var _file = file_text_open_read_ns(_dir, -1);

// Read file
var _str = "";
do
{
	var _line = file_text_read_line_ns(_file);
	_str += _line+"\n";
} until(_line == "");

// Close file
file_text_close_ns(_file);

// Load
load_data(_str);