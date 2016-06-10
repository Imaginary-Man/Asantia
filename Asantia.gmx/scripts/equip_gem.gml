//equip_gem()
if i_gem[j].item=3
{
 if j=0{gem_zero_armor+=(20*(i_gem[j].rarity/2))}
 if j=1{gem_one_armor+=(20*(i_gem[j].rarity/2))}
 if j=2{gem_two_armor+=(20*(i_gem[j].rarity/2))}
 if j=3
 {
  /*back*/gem_three_armor+=(20*(i_gem[j].rarity/2))
  obj_back.back=i_gem[j].sprite_ingame
 }
}
