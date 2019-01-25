
/// @desc	Returns instance of node with given node_id

/// @param	node_id

var _node_id = argument[0];
with(Node) if(node_id == _node_id) return id;
return noone;