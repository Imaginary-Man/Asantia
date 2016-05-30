///ui_select_image_index(x,y)

if window_mouse_get_x()>=(argument0)-6*global.ui_size
   and window_mouse_get_x()<=(argument0)+6*global.ui_size
   and window_mouse_get_y()>=(argument1)-6*global.ui_size
   and window_mouse_get_y()<=(argument1)+6*global.ui_size
{
 return 1;
}
 else
{
 return 0;
}
