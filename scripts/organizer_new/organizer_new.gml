
///@desc	Delete all nodes

with(NodeBubble) instance_destroy();
with(Node) instance_destroy();

global._cam_x = room_width/2 - cam_w/2
global._cam_y = room_height/2 - cam_h/2
global.cam_zoom = 1;