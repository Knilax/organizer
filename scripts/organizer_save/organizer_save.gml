
/// @desc Saves everything to file

var _str = "";

// Camera
var _map = ds_map_create();
ds_map_add(_map, "obj", "MainCont");
ds_map_add(_map, "create_new", false);
ds_map_add(_map, "global.cam_zoom", global.cam_zoom);
ds_map_add(_map, "global._cam_x", global._cam_x);
ds_map_add(_map, "global._cam_y", global._cam_y);
_str += base64_encode(json_encode(_map))+"\n";
ds_map_destroy(_map);

// Nodes
with(Node)
{
	// Fix body text
	var _body = string_replace_all(body, "\"", chr(92)+chr(34)); // Add a forward slash before quotes
	
	// Form JSON string
	var _map = ds_map_create();
	ds_map_add(_map, "obj", "Node");
	ds_map_add(_map, "create_new", true);
	ds_map_add(_map, "node_id", node_id);
	ds_map_add(_map, "x", x);
	ds_map_add(_map, "y", y);
	ds_map_add(_map, "index", index);
	ds_map_add(_map, "color", color);
	ds_map_add(_map, "header", header);
	ds_map_add(_map, "body", _body);
	ds_map_add(_map, "linked", linked);
	_str += base64_encode(json_encode(_map))+"\n";
	ds_map_destroy(_map);
}

// Get directory of file
var _dir = get_save_filename("*.organizer", "");
if(string_count(".", _dir) == 0) _dir += ".organizer";

// Open file
var _file = file_text_open_write_ns(_dir, -1);

// Write file
file_text_write_line_ns(_file, _str);

// Close file
file_text_close_ns(_file);
