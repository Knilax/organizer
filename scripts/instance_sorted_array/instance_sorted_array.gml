
/// @desc	Returns sorted array of instances by their 'index' variable

/// @param	obj

// Create list
var _list = ds_list_create();

// Add objects to priority by index
with(argument[0])
{
	var _ind = 0;
	for(var i = 0; i < ds_list_size(_list); i++)
		if(_list[|i].index < index) _ind = i+1;
	ds_list_insert(_list, _ind, id);
}

// List to array
var _arr = [];
for(var i = 0; i < ds_list_size(_list); i++)
	_arr[i] = _list[|i];

// Finished
ds_list_destroy(_list);
return _arr;