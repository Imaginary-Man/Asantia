///ui_equip()
if drag=false
{for(i=0; i<slots; i+=1){for(j=0; j<=3; j+=1){for(o=0; o<=1; o+=1)
{
  if slot[i]=1
  { 
   if window_mouse_get_x()>=slotx[i]
   and window_mouse_get_x()<=slotx[i]+16*global.ui_size
   and window_mouse_get_y()>=sloty[i]
   and window_mouse_get_y()<=sloty[i]+16*global.ui_size
   and mouse_check_button_pressed(mb_right)
   {
    if slotid[i].type="bothhand"
    {
     if i_mainhand=0 and i_offhand=0 
     {
      i_mainhand=slotid[i]
      slotid[i]=0
      slot[i]=0
      break;
     }
    }
    
    if slotid[i].type="mainhand"
    {
     if i_mainhand=0
     {
      i_mainhand=slotid[i]
      slotid[i]=0
      slot[i]=0
      break;      
     }
    }

    if slotid[i].type="offhand"
    {
     if i_offhand=0
     {
      i_offhand=slotid[i]
      slotid[i]=0
      slot[i]=0      
      break;      
     }
    }    
        
    if slotid[i].type="ring"
    {
     if i_ring[o]=0
     {
      i_ring[o]=slotid[i]
      slotid[i]=0
      slot[i]=0      
      break;  
     }  
    }   
   
    if slotid[i].type="gem"
    {
     if i_gem[j]=0
     {
      i_gem[j]=slotid[i]
      slotid[i]=0
      slot[i]=0      
      break;  
     }  
    }    

    if slotid[i].type="necklace"
    {
     if i_necklace=0
     {
      i_necklace=slotid[i]
      slotid[i]=0
      slot[i]=0      
      break;
     }
    }       
   }
 }}
}}}
