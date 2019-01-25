
/// @desc Add options

NodeBubble_add_checkbox("Locked", NodeBubble_checkbox_on_click_locked, creator.locked);
NodeBubble_add_checkbox("Clear links", NodeBubble_checkbox_on_click_clear_links, -1);

ds_list_add(colors, c_white); //white
ds_list_add(colors, make_color_rgb(176, 190, 197)); //gray
ds_list_add(colors, make_color_rgb(245, 0, 87)); //red
ds_list_add(colors, make_color_rgb(0, 230, 118)); //green
ds_list_add(colors, make_color_rgb(64, 196, 255)); //blue
ds_list_add(colors, make_color_rgb(179, 136, 255)); //pink