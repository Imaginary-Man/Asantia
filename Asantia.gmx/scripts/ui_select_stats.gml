///ui_select_stats(x,y,width)

if window_mouse_get_x()>=(argument0)
   and window_mouse_get_x()<=(argument0)+argument2
   and window_mouse_get_y()>=(argument1)
   and window_mouse_get_y()<=(argument1)+7*global.ui_size
{
 return 1
}
 else
{
 return 0
}
