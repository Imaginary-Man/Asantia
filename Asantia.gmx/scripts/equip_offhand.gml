//equipmainhand
if i_offhand.item=11
{
 with (obj_offhand_parent)
 {
  instance_change(obj_off_shield,true)
 }
 offhand_armor+=(20*(i_offhand.rarity/2))
}
///

if i_offhand.item=executioner_shield
{
 with (obj_offhand_parent)
 {
  instance_change(obj_off_shield,true)
 }
 offhand_armor+=(20*(i_offhand.rarity/2))
}

if i_offhand.item=executioner_shortsword
{
 with (obj_offhand_parent)
 {
  instance_change(obj_off_shortsword,true)
 }
 //
}

if i_offhand.item=waterweed_shortsword
{
 with (obj_offhand_parent)
 {
  instance_change(obj_off_shortsword,true)
 }
 //
}
