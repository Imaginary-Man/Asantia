///item_init()
/*

0=name of item
  "mega super explosive super duper super super mega cloning machine"

1=description of item
  "this is the description of the item. -shavv"

2=maximum stack
  64

3=sprite
  spr_item_sword

4=ingame sprite
  spr_sword  

5=rarity
     0/1/2/3/4/5/6/7/8/9/10/11
  "crude/common/uncommon/rare/unique/grand/heroic/legendary/mythical/demonic/divine/godlike"
    
6=type
  "mainhand/offhand/bothhand/helm/necklace/ring/gem/quest/consume/material/other"

*/


///item id left:10

//greatswords
global.item[0,0]="Waterweed GreatSword"
global.item[0,2]=1
global.item[0,3]=item_gs_waterweed
global.item[0,4]=gs_waterweed
global.item[0,6]="bothhand"


///greataxes
global.item[7,0]="Waterweed GreatAxe"
global.item[7,2]=1
global.item[7,3]=item_ga_waterweed
global.item[7,4]=ga_waterweed
global.item[7,6]="bothhand"


//scythes
global.item[8,0]="Waterweed Scythe"
global.item[8,2]=1
global.item[8,3]=item_sc_waterweed
global.item[8,4]=sc_waterweed
global.item[8,6]="bothhand"


//bows
global.item[2,0]="Waterweed Bow"
global.item[2,2]=1
global.item[2,3]=item_bow_waterweed
global.item[2,4]=bow_waterweed
global.item[2,6]="bothhand"


//ringblades
global.item[4,0]="Waterweed Ringblade"
global.item[4,2]=1
global.item[4,3]=item_rb_waterweed
global.item[4,4]=rb_waterweed
global.item[4,6]="bothhand"


//helmets
global.item[1,0]="Waterweed Helmet"
global.item[1,2]=1
global.item[1,3]=item_helm_waterweed
global.item[1,4]=helm_waterweed
global.item[1,6]="helm"



//gems
global.item[3,0]="Holy Gem"
global.item[3,2]=1
global.item[3,3]=item_gem_light_1
global.item[3,4]=back_holy_wings_1
global.item[3,6]="gem"

//necklaces
global.item[5,0]="Lapiz Necklace"
global.item[5,2]=1
global.item[5,3]=item_nl_lapiz
global.item[5,4]=nl_lapiz
global.item[5,6]="necklace"

//rings
global.item[6,0]="Lapiz Ring"
global.item[6,2]=1
global.item[6,3]=item_ring_lapiz
global.item[6,6]="ring"






////////////////////////////////////////
/////////MATERIALS//////////////////////
///////////////////////////////////////

//log
global.item[9,0]="Oak Log"
global.item[9,2]=100
global.item[9,3]=item_log_1
global.item[9,6]="material"
