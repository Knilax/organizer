
/// @desc Add options

NodeBubble_add_checkbox("Locked", NodeBubble_checkbox_on_click_locked, creator.locked);
//NodeBubble_add_checkbox("Clear links", NodeBubble_checkbox_on_click_clear_links, -1);

ds_list_add(colors, c_white); //white
ds_list_add(colors, make_color_rgb(207, 216, 220)); //gray
ds_list_add(colors, make_color_rgb(248, 187, 208)); //red
ds_list_add(colors, make_color_rgb(185, 246, 202)); //green
ds_list_add(colors, make_color_rgb(244, 255, 129)); //blue
ds_list_add(colors, make_color_rgb(231, 185, 255)); //pink