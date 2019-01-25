
/// @desc   Moves cursor left or right by value _add

/// @param  str
/// @param  cursor_pos
/// @param  add

// Add to cursor position
return clamp(argument[1] + argument[2], 0, string_length(argument[0]));