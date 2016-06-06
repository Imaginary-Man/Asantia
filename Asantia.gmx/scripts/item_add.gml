//item_add(item_id,kwantiteit,rarity)
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
       j.stack=argument1
       j.sprite_index=global.item[argument0,3]
       j.sprite_ingame=global.item[argument0,4]
       j.rarity=argument2   
       slotid[i]=j
       slot[i]=1 
       break;
      }
  } 
