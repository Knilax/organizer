
/// @desc	Returns array of maps of data to load

/// @param	str

var _str = argument[0];

var _name = "";
var _var_pair = "";
var _naming = true;
var _var_finding = false;
var _current_map = -1;

// Hold data
var _arr = [];
var _pos = 0;

// Every character
for(var c = 1; c <= string_length(_str); c++)
{
	var _char = string_char_at(_str, c);
	
	// Var finding
	if(_var_finding)
	{
		// New pair / stop finding
		if(_char == "," || _char == "}")
		{
			_current_map[?"values"] = array_add_1d(_current_map[?"values"], _var_pair);
			_var_pair = "";
			// Stop finding vars
			if(_char == "}") _var_finding = false;
		}
		// Add to pair
		else _var_pair += _char;
	}
	// Stop adding to name
	else if(_char == "{")
	{
		_current_map = ds_map_create();
		_arr[_pos++] = _current_map;
		ds_map_add(_current_map, "name", _name);
		ds_map_add(_current_map, "values", []);
		_var_finding = true;
	}
	// Start adding to name
	else if(_char == "," && !_var_finding)
	{
		_naming = true;
		_name = "";
	}
	// Add to name
	else if(_naming) _name += _char;
}

return _arr;