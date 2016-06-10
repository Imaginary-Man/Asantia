///ui_inv_drag()
if drag=false
{
 for(i=0; i<slots; i+=1)
 {
  if slot[i]=1
  { 
   if window_mouse_get_x()>=slotx[i]
   and window_mouse_get_x()<=slotx[i]+16*global.ui_size
   and window_mouse_get_y()>=sloty[i]
   and window_mouse_get_y()<=sloty[i]+16*global.ui_size
   and mouse_check_button_pressed(mb_left)
   {
    c=slotid[i]
    dragitem=slotid[i]
    dragsprite=slotid[i].sprite_index
    dragrarity=slotid[i].rarity
    oldslot=i
    drag=true
    break;
   }
  }
 }
}
 else
{
 for(r=0; r<slots; r+=1)
 {
  if slot[r]=0
  { 
   if window_mouse_get_x()>=slotx[r]
   and window_mouse_get_x()<=slotx[r]+16*global.ui_size
   and window_mouse_get_y()>=sloty[r]
   and window_mouse_get_y()<=sloty[r]+16*global.ui_size
   and mouse_check_button_pressed(mb_left)
   {
    slot[oldslot]=0
    slotid[oldslot]=0    
    slot[r]=1
    slotid[r]=dragitem
    dragitem=0
    dragsprite=0
    dragrarity=0
    drag=false
    break;
   }
  }
  if slot[r]=1 and slotid[r]=dragitem
  { 
   if window_mouse_get_x()>=slotx[r]
   and window_mouse_get_x()<=slotx[r]+16*global.ui_size
   and window_mouse_get_y()>=sloty[r]
   and window_mouse_get_y()<=sloty[r]+16*global.ui_size
   and mouse_check_button_pressed(mb_left)
   { 
    dragitem=0
    dragsprite=0
    dragrarity=0
    drag=false  
    break; 
   }
  }
   if window_mouse_get_x()>=d_width-(global.ui_size*119)
   and window_mouse_get_x()<=d_width-(global.ui_size*21)
   and window_mouse_get_y()>=d_height-(d_height/2)-73*global.ui_size
   and window_mouse_get_y()<=d_height-(d_height/2)+84*global.ui_size
   {
    //
   } 
    else
   {
    if mouse_check_button_pressed(mb_left)
    {
     with (c)
     {
      instance_destroy()
     }
     dragitem=0
     dragsprite=0
     dragrarity=0
     slot[oldslot]=0
     slotid[oldslot]=0  
     drag=false
    }
   }              
 }
 if keyboard_check_pressed(vk_escape)
 {
  dragitem=0
  dragsprite=0
  dragrarity=0
  drag=false
 }
}
