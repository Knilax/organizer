
// Macros

#macro DEP_BUBBLE -5
#macro DEP_NORMAL 0
#macro DEP_TUTORIAL 5
#macro DEP_BACKGROUND 10

#macro cam view_camera[0]
#macro cam_x camera_get_view_x(cam)
#macro cam_y camera_get_view_y(cam)
#macro cam_w camera_get_view_width(cam)
#macro cam_h camera_get_view_height(cam)

#macro gui_width display_get_gui_width()
#macro gui_height display_get_gui_height()

#macro gui_mouse_x device_mouse_x_to_gui(0)
#macro gui_mouse_y device_mouse_y_to_gui(0)

#macro BACKSPACE_HOLDING_ALARM 30
#macro BACKSPACE_DELETE_ALARM 1.25
#macro TYPING_PIPE_TOGGLE 30
#macro DOUBLE_CLICK_TIME 15