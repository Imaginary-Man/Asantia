///item_check(item_id,kwantiteit)
var kwantiteit=argument1;
var f=kwantiteit
for(i=0; i<obj_gui.slots; i+=1)
{  
 if slot[i]=1
 {
  if slotid[i].item=argument0
  {
   if slotid[i].stack - f >=0
   {
    return true;
   }
    else
   {
    f-=slotid[i].stack
   }
  }
 }
}
