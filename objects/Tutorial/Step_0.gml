
// Center on screen
x = lerp(x, cam_x + cam_w/2, 0.1);
y = lerp(y, cam_y + cam_h/2, 0.1);

// Delete if nodes exist
var _go_away = instance_exists(Node);
scale = clamp(scale - 0.04*_go_away, 0, 1);
if(_go_away) image_alpha *= 0.85;
else image_alpha = 1;
if(scale < 0) instance_destroy();