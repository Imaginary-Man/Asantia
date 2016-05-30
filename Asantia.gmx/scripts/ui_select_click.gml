///ui_select_click(x,y)

if window_mouse_get_x()>=(argument0)-6*global.ui_size
   and window_mouse_get_x()<=(argument0)+6*global.ui_size
   and window_mouse_get_y()>=(argument1)-6*global.ui_size
   and window_mouse_get_y()<=(argument1)+6*global.ui_size
   and mouse_check_button_pressed(mb_left)
{
 return 1;
}
