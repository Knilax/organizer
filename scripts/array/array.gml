
/// @desc	Converts given string to array

/// @param	str

var _str = argument[0];

// Fix string
_str = string_copy(_str, 2, string_length(_str)-2); // shave off brackets
_str = string_replace_all(_str, ", ", ","); // remove spaces after commas

// Convert to array
var _arr = string_split(_str, ",");

// Convert values to reals if possible
for(var i = 0; i < array_length_1d(_arr); i++)
	if(string(real(_arr[i])) == _arr[i])
		_arr[i] = real(_arr[i]);

// Done
return _arr;