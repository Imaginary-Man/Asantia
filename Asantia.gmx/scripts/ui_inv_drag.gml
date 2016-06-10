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
    if keyboard_check(vk_shift) and slotid[i].stack>1
    {
     d=instance_create(window_mouse_get_x(),window_mouse_get_y(),ITEM)
     d.type=global.item[slotid[i].item,6]
     d.item=slotid[i].item
     d.name=global.item[slotid[i].item,0]
     d.description=global.item[slotid[i].item,1]
     d.maxstack=global.item[slotid[i].item,2]
     d.stack=ceil(slotid[i].stack/2)
     d.sprite_index=global.item[slotid[i].item,3]
     d.sprite_ingame=global.item[slotid[i].item,4]
     d.rarity=slotid[i].rarity   
     slotid[i].stack-=ceil(slotid[i].stack/2) 
     //
     c=d.id
     dragitem=d.item
     dragstack=d.stack
     dragsprite=d.sprite_index
     dragrarity=d.rarity
     drag=true   
     oldslot=-1
     exit;
    }
     else
    {
     c=slotid[i]
     dragitem=slotid[i].item
     dragstack=slotid[i].stack
     dragsprite=slotid[i].sprite_index
     dragrarity=slotid[i].rarity
     oldslot=i
     drag=true
     exit;    
    }
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
    if oldslot>=0
    {
     slot[oldslot]=0
     slotid[oldslot]=0
    }    
    slot[r]=1
    slotid[r]=c
    dragitem=0
    dragstack=0
    dragsprite=0
    dragrarity=0
    drag=false
    exit;
   }
  }
  if slot[r]=1 and slotid[r].item=dragitem and slotid[r]!=c
  { 
   if window_mouse_get_x()>=slotx[r]
   and window_mouse_get_x()<=slotx[r]+16*global.ui_size
   and window_mouse_get_y()>=sloty[r]
   and window_mouse_get_y()<=sloty[r]+16*global.ui_size
   and mouse_check_button_pressed(mb_left)
   { 
    f=slotid[r].maxstack-slotid[r].stack
    if slotid[r].stack + dragstack >= slotid[r].maxstack
    {
     dragstack-=f
     slotid[r].stack+=f
     if oldslot>0
     {
      slotid[oldslot].stack-=f
     }
     drag=false
    }
     else
    {
     slotid[r].stack+=dragstack
     dragitem=0
     dragsprite=0
     dragrarity=0
     drag=false
     if oldslot>=0
     {
      slot[oldslot]=0
      slotid[oldslot]=0
     }
     exit;
    }
   }      
  }
  if dragstack=0
  {
   dragitem=0
   dragsprite=0
   dragrarity=0
   drag=false  
   exit;
  }
    
   ////
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
     dragitem=0
     dragsprite=0
     dragrarity=0
     dragstack=0
     drag=false
     if oldslot>=0
     {     
      slot[oldslot]=0
      slotid[oldslot]=0  
     }
     with (c)
     {
      instance_destroy()
     }
     exit;
    }
   }              
 }
 if keyboard_check_pressed(vk_escape)
 {
  dragitem=0
  dragsprite=0
  dragrarity=0
  dragstack=0
  drag=false
  exit;
 }
}
