
// Creator is no longer typing
with(creator)
{
	typing = false;
	typing_pipe_enabled = false;
}

// Destroy data structures
for(var i = 0; i < ds_list_size(checkboxes); i++)
	ds_map_destroy(checkboxes[|i]);
ds_list_destroy(checkboxes);