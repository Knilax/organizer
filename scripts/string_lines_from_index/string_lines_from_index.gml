
/// @desc Returns how many newlines have been met before given character index

/// @param	str
/// @param	ind

var _str = argument[0];
var _ind = argument[1];

var _substr = string_copy(_str, 1, _ind);
var _count = 0;
for(var i = 1; i <= string_length(_substr); i++)
	if(string_char_at(_substr, i) == "\n")
		_count += 1;

return _count;