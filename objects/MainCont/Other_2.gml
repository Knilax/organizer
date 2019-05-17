
/// @desc Macros

// Depth

#macro DEP_ICONS -4
#macro DEP_BUBBLE -2
#macro DEP_NORMAL 0
#macro DEP_TUTORIAL 2
#macro DEP_BACKGROUND 4

// Camera

#macro cam view_camera[0]
#macro cam_x camera_get_view_x(cam)
#macro cam_y camera_get_view_y(cam)
#macro cam_w camera_get_view_width(cam)
#macro cam_h camera_get_view_height(cam)

// Gui

#macro gui_width display_get_gui_width()
#macro gui_height display_get_gui_height()

// Mouse

#macro gui_mouse_x device_mouse_x_to_gui(0)
#macro gui_mouse_y device_mouse_y_to_gui(0)

// Specific

#macro BACKSPACE_HOLDING_ALARM 30
#macro BACKSPACE_DELETE_ALARM 1.25
#macro TYPING_PIPE_TOGGLE 30
#macro DOUBLE_CLICK_TIME 15
#macro NODEBUBBLE_MARGIN_H 10
#macro NODEBUBBLE_MARGIN_V 10