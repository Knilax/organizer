
/// @desc	Converts a list to an array

/// @param	list

var _list = argument[0];

var _arr = [];
var _pos = 0;
for(var i = 0; i < ds_list_size(_list); i++)
	_arr[_pos++] = ds_list_find_value(_list, i);

return _arr;