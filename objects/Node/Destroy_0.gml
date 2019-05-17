
// Sequence fixes

var _pos = 0;

// Array of all Nodes that link to here
var _links_here_ids = [];
with(Node) for(var i = 0; i < array_length_1d(linked); i++)
	if(linked[i] == other.node_id)
	{
		_links_here_ids[_pos++] = id;
	}
// Array of all Nodes that this links to
_pos = 0;
var _links_to_ids = [];
for(var i = 0; i < array_length_1d(linked); i++)
	with(Node) if(node_id == other.linked[i])
	{
		_links_to_ids[_pos++] = id;
	}

// Fix if in middle of sequence
for(var i = 0; i < array_length_1d(_links_here_ids); i++)
	for(var j = 0; j < array_length_1d(_links_to_ids); j++)
		with(_links_here_ids[i])
		{
			linked[array_length_1d(linked)] = _links_to_ids[j].node_id;
		}

// If this index is missing, other indexes might be messed up
fix_node_indexes();