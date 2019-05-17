
/// @desc Load everything, returns if successful

/// @param	array

var _arr = argument[0];

// Debug

var _debug = false;
if(_debug) var _debug_str = "[";

// Destroy all Nodes

with(Node) instance_destroy();

// Load data

var _max = array_length_1d(_arr); // -1 b/c the do loop adds a blank at the end
for(var i = 0; i < _max; i++)
{
	// Debug
	if(_debug) _debug_str += "\"" + _arr[i] + "\"" + ((i != _max-1) ? "," : "");
	
	var _map = json_decode(base64_decode(_arr[i]));
	if(!ds_exists(_map, ds_type_map)) return false;
	if(!ds_map_exists(_map, "obj")) return false;
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

// Debug

if(_debug)
{
	_debug_str += "];";
	show_debug_message(_debug_str);
	clipboard_set_text(_debug_str);
}

// Reset size of Nodes

with(Node) node_set_text(id, body, header);

// Success

return true;