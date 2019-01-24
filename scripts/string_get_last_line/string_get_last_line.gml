
/// @desc	Returns last line of multi-line string

/// @param	str

var _str = argument[0];

var _final_str = "";
for(var i = 1; i <= string_length(_str); i++)
{
	var _char = string_char_at(_str, i);
	if(_char == "\n") _final_str = "";
	else _final_str += _char;
}

return _final_str;