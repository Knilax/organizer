
/// @desc Load everything

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
do
{
	var _line = base64_decode(file_text_read_line_ns(_file));
	_arr[i++] = _line;
} until(_line == "");

// Close file

file_text_close_ns(_file);

// Destroy all Nodes

with(Node) instance_destroy();

// Load data

for(var i = 0; i < array_length_1d(_arr)-1 /* -1 b/c the do loop adds a blank at the end */; i++)
{
	var _map = json_decode(_arr[i]);
	//Get instance of object to modify/add
	var _inst = asset_get_index(_map[?"obj"]);
	if(_map[?"create_new"]) _inst = instance_create(0, 0, _inst);
	
	// Modify instance
	with(_inst)
		for(var _key = ds_map_find_first(_map); !is_undefined(_key); _key = ds_map_find_next(_map, _key))
			if(_key != "create_new" && _key != "obj")
			{
				// Get value
				var _val = ds_map_find_value(_map, _key);
				if(_key == "linked")
				{
					var _temp_arr = list_to_array(_val);
					ds_list_destroy(_val);
					_val = _temp_arr;
				}
				// Set value
				var _is_global = (string_copy(_key, 1, 7) == "global.");
				if(_is_global) variable_global_set(string_copy(_key, 8, string_length(_key)), _val);
				else variable_instance_set(id, _key, _val);
			}
	
	ds_map_destroy(_map);
}

// Reset size of Nodes

with(Node) node_set_text(id, body, header);