//equipmainhand
if i_mainhand.item=0
{
 with (obj_weapon_parent)
 {
  instance_change(obj_greatsword,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=25
}

if i_mainhand.item=2
{
 with (obj_weapon_parent)
 {
  instance_change(obj_bow,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=120
}

if i_mainhand.item=4
{
 with (obj_weapon_parent)
 {
  instance_change(obj_ringblade,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=120
}

if i_mainhand.item=7
{
 with (obj_weapon_parent)
 {
  instance_change(obj_greataxe,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=25
}

if i_mainhand.item=8
{
 with (obj_weapon_parent)
 {
  instance_change(obj_scythe,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=25
}

if i_mainhand.item=grail_scythe
{
 with (obj_weapon_parent)
 {
  instance_change(obj_scythe,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=25
}

if i_mainhand.item=10
{
 with (obj_weapon_parent)
 {
  instance_change(obj_shortsword,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=15
}

if i_mainhand.item=executioner_shortsword
{
 with (obj_weapon_parent)
 {
  instance_change(obj_shortsword,true)
 }
 mainhand_ad+=(20*(i_mainhand.rarity/2))
 mainhand_str+=(15*(i_mainhand.rarity/2))
 mainhand_sta+=(5*(i_mainhand.rarity/2))
 mainhand_attackrange=15
}

///
