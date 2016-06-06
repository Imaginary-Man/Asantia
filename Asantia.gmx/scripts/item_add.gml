//item_add(item_id,kwantiteit)
for(i:=1; i<obj_gui.slots; i+=1)
  {
      if slot[i]=0
      {
       j=instance_create(x,y,ITEM)
       j.xx=slotx[i]
       j.yy=sloty[i]
       j.name=global.item[argument0,0]
       j.description=global.item[argument0,1]
       j.maxstack=global.item[argument0,2]
       j.stack=argument1
       j.sprite_index=global.item[argument0,3]
       j.rarity=global.item[argument0,5] 
       slot[i]=1   
       slotid[i]=argument0
      }
  } 
