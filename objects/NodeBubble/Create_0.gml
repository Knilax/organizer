
// Creator
creator = noone;

// Set cursor position to end of body
alarm[2] = 1;

// Size
height = 58;
width = 172;
arrow_size = width*0.075;

// Positions
arrow_x = x + width/2;
margin_h = 10;
margin_v = 7;

// Typing
backspace_holding_alarm = BACKSPACE_HOLDING_ALARM;
backspace_delete_alarm = BACKSPACE_DELETE_ALARM;

// Options
checkboxes = ds_list_create();
colors = ds_list_create();
alarm[1] = 1;

// Clear keyboard string
keyboard_string = "";

// Toggle typing pipe
alarm[0] = TYPING_PIPE_TOGGLE;