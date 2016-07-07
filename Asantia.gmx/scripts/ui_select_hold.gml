///ui_select_hold(x,y)

if window_mouse_get_x()>=(argument0)
   and window_mouse_get_x()<=(argument0)+58*global.ui_size
   and window_mouse_get_y()>=(argument1)
   and window_mouse_get_y()<=(argument1)+12*global.ui_size
   and mouse_check_button(mb_left)
{
 return 1;
}
