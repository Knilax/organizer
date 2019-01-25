
/// @desc	Loads all data from string

/// @param	str

var _str = argument[0];

// Get array of variables
var _arr = load_get_variables(_str);

// Handle variables
for(var i = 0; i < array_length_1d(_arr); i++)
{
	// Get vars and stuff
	var _map = _arr[i];
	var _name = _map[?"name"];
	var _val_arr = _map[?"values"];
	
	// Get object and instance if applicable
	var _obj = asset_get_index(_name);
	var _inst = noone;
	if(object_exists(_obj)) _inst = instance_create(0, 0, _obj);
	
	// Set variables
	for(var j = 0; j < array_length_1d(_val_arr); j++)
	{
		var _split_arr = string_split(_val_arr[j], ":");
		var _var_name = _split_arr[0];
		var _var_value = _split_arr[1];
		// Convert to array if applicable
		if(string_char_at(_var_value, 1) == "[")
			_var_value = array(_var_value);
		// Convert to real if applicable
		else if(string(real(_var_value)) == _var_value) _var_value = real(_var_value);
		// Set variable depending on object name / variable type
		switch(_name)
		{
			// Camera
			case "camera":
				switch(_var_name)
				{
					case "zoom": global.cam_zoom = _var_value; break;
					case "x": global._cam_x = _var_value; break;
					case "y": global._cam_y = _var_value; break;
				}
				break;
			// Object
			default:
				with(_inst) variable_instance_set(id, _var_name, _var_value);
				break;
		}
	}
	
	// Destroy map
	ds_map_destroy(_arr[i]);
}

// Fix Node width and height
with(Node) node_set_text(id, body, header);
