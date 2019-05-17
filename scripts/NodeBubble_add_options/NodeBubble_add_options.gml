
/// @desc Adds options to NodeBubble

// Checkboxes

NodeBubble_add_checkbox("Lock placement", NodeBubble_checkbox_on_click_locked, creator.locked);
NodeBubble_add_checkbox("Clear links", NodeBubble_checkbox_on_click_clear_links, -1);

// Colors

ds_list_add(colors, c_white); //white
ds_list_add(colors, make_color_rgb(207, 216, 220)); //gray
ds_list_add(colors, make_color_rgb(248, 187, 208)); //red
ds_list_add(colors, make_color_rgb(255, 204, 188)); //orange
ds_list_add(colors, make_color_rgb(255, 249, 196)); //yellow
ds_list_add(colors, make_color_rgb(185, 246, 202)); //green
ds_list_add(colors, make_color_rgb(179, 229, 252)); //blue
ds_list_add(colors, make_color_rgb(243, 229, 245)); //purple
ds_list_add(colors, make_color_rgb(197, 202, 233)); //also purple
width = (NodeBubble_checkbox_size() + NODEBUBBLE_MARGIN_H) * ds_list_size(colors) + NODEBUBBLE_MARGIN_H;
height += NodeBubble_checkbox_size() + NODEBUBBLE_MARGIN_V;