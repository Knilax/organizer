
/// @desc	Opens node bubble

/// @param	id

with(argument[0])
{
	global.node_interacted = true;
	global.last_interacted = id;
	index = node_highest_index()+1;
	typing = true;
	with(instance_create(0, 0, NodeBubble, DEP_BUBBLE)) creator = other;
}