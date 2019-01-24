
// Depth
depth = DEP_NORMAL;

// Window size
window_set_size(800, 450);

// Anti-aliasing
gpu_set_tex_filter(true);

// Zoom of camera
global.cam_zoom = 1;

// Position of camera
global._cam_x = 0;
global._cam_y = 0;

// Last node interacted with
global.last_interacted = noone;

// Linking nodes
global.link = noone;

// Workspace panning
panning = false;
pan_start_x = 0;
pan_start_y = 0;