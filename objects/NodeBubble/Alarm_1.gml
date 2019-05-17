
/// @desc Size and position

// Options
checkboxes = ds_list_create();
colors = ds_list_create();
NodeBubble_add_options();

// Set position
x = nodebubble_desired_x(id);
y = nodebubble_desired_y(id) + 20;
arrow_x = x + width/2;

// Visible again
visible = true;