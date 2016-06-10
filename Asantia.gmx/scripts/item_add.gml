///item_add(item_id,kwantiteit,rarity)
var kwantiteit=argument1;

for(i=0; i<obj_gui.slots; i+=1)
{   
 if slot[i]=1
 {
  if slotid[i].item=argument0
  {
   f=slotid[i].maxstack-slotid[i].stack
   if slotid[i].stack + kwantiteit > slotid[i].maxstack
   {
    kwantiteit-=f
    slotid[i].stack+=f
   }
    else
   {
    slotid[i].stack+=kwantiteit
    exit;
   }
  }
 }
}
 
for(i=0; i<obj_gui.slots; i+=1)
{  
 if slot[i]=0
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
  slotid[i]=j.id
  slot[i]=1 
  break;
 }
} 
