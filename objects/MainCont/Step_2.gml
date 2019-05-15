
// Cursor
if(global.hovering_clickable || global.hovering_icon || hovering_over_node()) window_set_cursor(cr_handpoint);
else window_set_cursor(cr_default);

// Reset
global.hovering_clickable = false;