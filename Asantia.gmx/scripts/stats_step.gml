///math on player only stat
global.mhp=(global.f_sta*5)
global.msp=(global.f_wis*6)
global.cooldown=100-(global.f_char/15)
global.attackspeed=1+(global.f_agi/400)
global.critchance=(global.f_dex/10)
global.casttime=100-(global.f_will/12)
global.ad=(global.f_str/2)
global.ap=(global.f_int/3)



///math on final
global.f_mhp=global.mhp+(global.i_mhp+global.b_mhp)
global.f_msp=global.msp+(global.i_msp+global.b_msp)
global.f_cooldown=global.cooldown+(global.i_cooldown+global.b_cooldown)
global.f_attackspeed=global.attackspeed+(global.i_attackspeed+global.b_attackspeed)
global.f_critchance=global.critchance+(global.i_critchance+global.b_critchance)
global.f_critmultiplier=global.critmultiplier+(global.i_critmultiplier+global.b_critmultiplier)
global.f_casttime=global.casttime+(global.i_casttime+global.b_casttime)
global.f_agi=global.agi+(global.i_agi+global.b_agi)
global.f_str=global.str+(global.i_str+global.b_str)
global.f_dex=global.dex+(global.i_dex+global.b_dex)
global.f_sta=global.sta+(global.i_sta+global.b_sta) 
global.f_wis=global.wis+(global.i_wis+global.b_wis)
global.f_char=global.char+(global.i_char+global.b_char)
global.f_int=global.int+(global.i_int+global.b_int)
global.f_will=global.will+(global.i_will+global.b_will)
global.f_jump=global.jump+(global.i_jump+global.b_jump)
global.f_mspeed=global.mspeed+(global.i_mspeed+global.b_mspeed)
global.f_ad=global.ad+(global.i_ad+global.b_ad)
global.f_ap=global.ap+(global.i_ap+global.b_ap)
global.f_attackrange=(global.i_attackrange+global.b_attackrange)
global.f_armor=(global.i_armor+global.b_armor)
global.f_resist=(global.i_resist+global.b_resist)
global.f_lifesteal=(global.i_lifesteal+global.b_lifesteal)
global.f_spellvamp=(global.i_spellvamp+global.b_spellvamp)
global.f_hpregen=global.hpregen+(global.i_hpregen+global.b_hpregen)
global.f_spregen=global.spregen+(global.i_spregen+global.b_spregen)

//level up
if global.xp>=global.mxp
{
 ///levelup effect
 effect_create_above(ef_firework,obj_player.x,obj_player.y-30,1,c_lime)
 ///leveling
 global.xp-=global.mxp
 global.mxp+=global.level*3
 global.level+=1
 ///stats increase
 global.agi+=1
 global.str+=1
 global.dex+=1
 global.sta+=1 
 global.wis+=1
 global.char+=1
 global.int+=1
 global.will+=1
}

///limit
if alarm[0]=-1
{
 if global.hp>global.f_mhp
 {
  global.hp=global.f_mhp
 }
 
 if global.sp>global.f_msp
 {
  global.sp=global.f_msp
 }
}
if global.hp<0
{
 global.hp=0
}

if global.sp<0
{
 global.sp=0
}





