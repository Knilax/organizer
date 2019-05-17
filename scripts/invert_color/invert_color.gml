
/// @desc Inverts given color

/// @param	col

var _col = argument[0];

return make_color_rgb(255-color_get_red(_col), 255-color_get_blue(_col), 255-color_get_green(_col));