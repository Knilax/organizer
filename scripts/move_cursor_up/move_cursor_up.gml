
/// @desc   Moves cursor up a line

/// @param  str
/// @param  cursor_pos
var _str = argument[0];
var _cursor_pos = argument[1];

// Find how many characters in the line the cursor is
var _cursor_line = string_lines_from_index(_str, _cursor_pos);
var _chars_in = string_length(string_get_line(string_copy(_str, 1, _cursor_pos), _cursor_line));

// Move cursor to end of previous line (if this line is bigger)
if(_chars_in > string_length(string_get_line(_str, _cursor_line-1)))
    _cursor_pos -= _chars_in+1;
// Move cursor to beginning of previous line
else _cursor_pos -= string_length(string_get_line(_str, _cursor_line-1))+1;

// Clamp result
return clamp(_cursor_pos, 0, string_length(_str));