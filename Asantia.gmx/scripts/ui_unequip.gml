///ui_unequip()
if drag=false
{
 for(i=0; i<slots; i+=1)
 {
  if i_mainhand!=0
  { 
   if window_mouse_get_x()>=i_mainhandx
   and window_mouse_get_x()<=i_mainhandx+16*global.ui_size
   and window_mouse_get_y()>=i_mainhandy
   and window_mouse_get_y()<=i_mainhandy+16*global.ui_size
   and mouse_check_button_pressed(mb_right)
    {
     if slot[i]=0
     {
      slot[i]=1
      slotid[i]=i_mainhand
      i_mainhand=0
      break;
     }
    }
  }
  if i_offhand!=0
  { 
   if window_mouse_get_x()>=i_offhandx
   and window_mouse_get_x()<=i_offhandx+16*global.ui_size
   and window_mouse_get_y()>=i_offhandy
   and window_mouse_get_y()<=i_offhandy+16*global.ui_size
   and mouse_check_button_pressed(mb_right)
    {
     if slot[i]=0
     {
      slot[i]=1
      slotid[i]=i_offhand
      i_offhand=0
      break;
     }
    }
  }
  if i_necklace!=0
  { 
   if window_mouse_get_x()>=i_necklacex
   and window_mouse_get_x()<=i_necklacex+16*global.ui_size
   and window_mouse_get_y()>=i_necklacey
   and window_mouse_get_y()<=i_necklacey+16*global.ui_size
   and mouse_check_button_pressed(mb_right)
    {
     if slot[i]=0
     {
      slot[i]=1
      slotid[i]=i_necklace
      i_necklace=0
      break;
     }
    }
  } 
  if i_helm!=0
  { 
   if window_mouse_get_x()>=i_helmx
   and window_mouse_get_x()<=i_helmx+16*global.ui_size
   and window_mouse_get_y()>=i_helmy
   and window_mouse_get_y()<=i_helmy+16*global.ui_size 
   and mouse_check_button_pressed(mb_right)
    {
     if slot[i]=0
     { 
      slot[i]=1
      slotid[i]=i_helm
      i_helm=0
      break;
     }
    }
  }
  for(j=0; j<=3; j+=1)
  {
   if i_gem[j]!=0
   {
    if window_mouse_get_x()>=i_gemx[j]
    and window_mouse_get_x()<=i_gemx[j]+16*global.ui_size
    and window_mouse_get_y()>=i_gemy[j]
    and window_mouse_get_y()<=i_gemy[j]+16*global.ui_size
    and mouse_check_button_pressed(mb_right)
    {
     if slot[i]=0
     {
      slot[i]=1
      slotid[i]=i_gem[j]
      i_gem[j]=0
      break;
     }
    }  
   }
  } 
  for(o=0; o<=1; o+=1)
  {
   if i_ring[o]!=0
   {
    if window_mouse_get_x()>=i_ringx[o]
    and window_mouse_get_x()<=i_ringx[o]+16*global.ui_size
    and window_mouse_get_y()>=i_ringy[o]
    and window_mouse_get_y()<=i_ringy[o]+16*global.ui_size
    and mouse_check_button_pressed(mb_right)
    {
     if slot[i]=0
     {
      slot[i]=1
      slotid[i]=i_ring[o]
      i_ring[o]=0
      break;
     }
    }  
   }
  }  
 }
}
