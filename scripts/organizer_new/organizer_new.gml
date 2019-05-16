
///@desc	Delete all nodes

with(NodeBubble) instance_destroy();
with(Node) instance_destroy();

global._cam_x = room_width/2;
global._cam_y = room_height/2;
global.cam_zoom = 1;

with(instance_create(room_width/2, room_height/2, Node))
{
	header = "How to use";
	body = "- Left click anywhere to place a node.\n- Right click to edit.\n\n- Double-clicking on a node then clicking\nanother node will link them.\n\n- While a node is selected, press delete\non your keyboard to delete it.";
	node_set_text(id, body, header);
	x -= width/2;
	y -= height/2;
}