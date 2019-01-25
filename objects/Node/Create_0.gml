
// Invisible
visible = false;

// Index of node
index = node_highest_index()+1;
node_id = global._node_id++;

// Size of node
width = 125;
height = 60;

// Reposition
locked = false;
grabbed = false;
grab_off_x = 0;
grab_off_y = 0;

// Linking
linked = [];
double_click_time = 0;

// Text
typing_header = false;
header = "";
body = "";
body_align = fa_left;
text_margin_w = 8;
text_margin_h = 8;
node_set_text(id, "", "");

// Typing
typing = false;
typing_pipe_enabled = false;
insert_pos = string_length(body);