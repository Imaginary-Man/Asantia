///ui_select_inv(x,y)

if window_mouse_get_x()>=(argument0)
   and window_mouse_get_x()<=(argument0)+16*global.ui_size
   and window_mouse_get_y()>=(argument1)
   and window_mouse_get_y()<=(argument1)+16*global.ui_size
{
 return 1
}
 else
{
 return 0
}
