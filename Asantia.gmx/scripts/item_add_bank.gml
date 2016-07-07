///item_add_bank(item_id,kwantiteit,rarity)
var kwantiteit=argument1;

for(i=0; i<88; i+=1)
{   
 if b_slot[i]=1
 {
  if b_slotid[i].item=argument0
  {
   f=b_slotid[i].maxstack-b_slotid[i].stack
   if b_slotid[i].stack + kwantiteit > b_slotid[i].maxstack
   {
    kwantiteit-=f
    b_slotid[i].stack+=f
   }
    else
   {
    b_slotid[i].stack+=kwantiteit
    exit;
   }
  }
 }
}
 
for(i=0; i<obj_gui.b_slots; i+=1)
{  
 if b_slot[i]=0
 {
  j=instance_create(x,y,ITEM)
  j.type=global.item[argument0,6]
  j.item=argument0
  j.name=global.item[argument0,0]
  j.description=global.item[argument0,1]
  j.maxstack=global.item[argument0,2]
  j.stack=kwantiteit
  j.sprite_index=global.item[argument0,3]
  j.sprite_ingame=global.item[argument0,4]
  j.rarity=argument2   
  b_slotid[i]=j.id
  b_slot[i]=1 
  break;
 }
} 
