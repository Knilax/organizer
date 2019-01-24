
/// @desc	Fixes all nodes' indexes

var _arr = instance_sorted_array(Node);
for(var i = 0; i < array_length_1d(_arr); i++)
	with(_arr[i]) index = i;