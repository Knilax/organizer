
/// @desc	Splits a string into an array by delimiter

/// @param	str
/// @param	delimiter

var _str = argument[0];

var _current_str = "";
var _arr = [], _pos = 0;
for(var c = 1; c <= string_length(_str); c++)
{
	var _char = string_char_at(_str, c);
	if(_char == argument[1])
	{
		_arr[_pos++] = _current_str;
		_current_str = "";
	}
	else _current_str += _char;
}
_arr[_pos] = _current_str;

return _arr;