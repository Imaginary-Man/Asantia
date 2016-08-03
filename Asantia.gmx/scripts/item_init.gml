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


///item id left:21

/////////////////////////////////////////////////////////////////////////////////////
/////////WEAPONS/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////
/////////GREATSWORDS////////////////////
///////////////////////////////////////

//greatswords
global.item[0,0]="Waterweed Greatsword"
global.item[0,2]=1
global.item[0,3]=item_gs_waterweed
global.item[0,4]=gs_waterweed
global.item[0,6]="bothhand"

////////////////////////////////////////
/////////GREATAXES//////////////////////
///////////////////////////////////////

///greataxes
global.item[7,0]="Waterweed Greataxe"
global.item[7,2]=1
global.item[7,3]=item_ga_waterweed
global.item[7,4]=ga_waterweed
global.item[7,6]="bothhand"

////////////////////////////////////////
/////////SCYTHES////////////////////////
///////////////////////////////////////

//scythes
global.item[8,0]="Waterweed Scythe"
global.item[8,2]=1
global.item[8,3]=item_sc_waterweed
global.item[8,4]=sc_waterweed
global.item[8,6]="bothhand"

////////////////////////////////////////
/////////SHORTSWORDS////////////////////
///////////////////////////////////////

//shortswords
global.item[10,0]="Waterweed Shortsword"
global.item[10,2]=1
global.item[10,3]=item_sw_waterweed
global.item[10,4]=sw_waterweed
global.item[10,6]="mainhand"

global.item[20,0]="Executioner Shortsword [T]"
global.item[20,2]=1
global.item[20,3]=item_noimg
global.item[20,4]=sw_executioner
global.item[20,6]="mainhand"

////////////////////////////////////////
/////////SHIELDS///////////////////////
///////////////////////////////////////

//shields
global.item[11,0]="Waterweed Shield"
global.item[11,2]=1
global.item[11,3]=item_sh_waterweed
global.item[11,4]=sh_waterweed
global.item[11,6]="offhand"

global.item[19,0]="Executioner Shield"
global.item[19,2]=1
global.item[19,3]=item_noimg
global.item[19,4]=sh_executioner
global.item[19,6]="offhand"

////////////////////////////////////////
/////////BOWS//////////////////////////
///////////////////////////////////////

//bows
global.item[2,0]="Waterweed Bow"
global.item[2,2]=1
global.item[2,3]=item_bow_waterweed
global.item[2,4]=bow_waterweed
global.item[2,6]="bothhand"

////////////////////////////////////////
/////////RINGBLADES/////////////////////
///////////////////////////////////////

//ringblades
global.item[4,0]="Waterweed Ringblade"
global.item[4,2]=1
global.item[4,3]=item_rb_waterweed
global.item[4,4]=rb_waterweed
global.item[4,6]="bothhand"


////////////////////////////////////////
/////////HELMETS////////////////////////
///////////////////////////////////////

//helmets
global.item[1,0]="Waterweed Helmet"
global.item[1,2]=1
global.item[1,3]=item_helm_waterweed
global.item[1,4]=helm_waterweed
global.item[1,6]="helm"

global.item[12,0]="Executioner Helmet"
global.item[12,2]=1
global.item[12,3]=item_helm_executioner
global.item[12,4]=helm_executioner
global.item[12,6]="helm"

global.item[13,0]="Grail Helmet"
global.item[13,2]=1
global.item[13,3]=item_helm_grail
global.item[13,4]=helm_grail
global.item[13,6]="helm"

global.item[14,0]="Nightmare Helmet"
global.item[14,2]=1
global.item[14,3]=item_helm_nightmare
global.item[14,4]=helm_nightmare
global.item[14,6]="helm"

global.item[15,0]="Templeguard Helmet"
global.item[15,2]=1
global.item[15,3]=item_helm_templeguard
global.item[15,4]=helm_templeguard
global.item[15,6]="helm"

global.item[16,0]="Knuggle Helmet"
global.item[16,2]=1
global.item[16,3]=item_helm_knuggle
global.item[16,4]=helm_knuggle
global.item[16,6]="helm"

global.item[17,0]="Forgotten Helmet"
global.item[17,2]=1
global.item[17,3]=item_helm_forgotten
global.item[17,4]=helm_forgotten
global.item[17,6]="helm"

global.item[18,0]="Warlord Helmet"
global.item[18,2]=1
global.item[18,3]=item_helm_warlord
global.item[18,4]=helm_warlord
global.item[18,6]="helm"

////////////////////////////////////////
////////////GEMS///////////////////////
///////////////////////////////////////

//gems
global.item[3,0]="Holy Gem"
global.item[3,2]=1
global.item[3,3]=item_gem_light_1
global.item[3,4]=back_holy_wings_1
global.item[3,6]="gem"

////////////////////////////////////////
/////////NECKLACES//////////////////////
///////////////////////////////////////


//necklaces
global.item[5,0]="Lapiz Necklace"
global.item[5,2]=1
global.item[5,3]=item_nl_lapiz
global.item[5,4]=nl_lapiz
global.item[5,6]="necklace"

////////////////////////////////////////
/////////RINGS/////////////////////////
///////////////////////////////////////

//rings
global.item[6,0]="Lapiz Ring"
global.item[6,2]=1
global.item[6,3]=item_ring_lapiz
global.item[6,6]="ring"






////////////////////////////////////////
/////////MATERIALS//////////////////////
///////////////////////////////////////

//logs
global.item[9,0]="Oak Log"
global.item[9,2]=100
global.item[9,3]=item_log_1
global.item[9,6]="material"
