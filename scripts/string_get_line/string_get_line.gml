
/// @desc	Returns last line of multi-line string

/// @param	str
/// @param	line

var _str = argument[0];
var _des_line = argument[1];

var _final_str = "";
var _line = 0;
for(var i = 1; i <= string_length(_str); i++)
{
	var _char = string_char_at(_str, i);
	if(_char == "\n")
	{
		if(_line == _des_line) break;
		else
		{
			_line += 1;
			_final_str = "";
		}
	}
	else _final_str += _char;
}

return _final_str;