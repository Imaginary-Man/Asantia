///ui_select(x,y,variable)

if window_mouse_get_x()>=(argument0)-6*global.ui_size
   and window_mouse_get_x()<=(argument0)+6*global.ui_size
   and window_mouse_get_y()>=(argument1)-6*global.ui_size
   and window_mouse_get_y()<=(argument1)+6*global.ui_size
{
 argument2=1
}
 else
{
 argument2=0
}
