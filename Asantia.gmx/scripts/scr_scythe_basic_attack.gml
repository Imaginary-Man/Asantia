//maxsteps
maxstep=40
//body lynx
if step=0
{
 crit_calculate()
 n=obj_player.n
 shot=false
 obj_player.state=1
 state=1
 image_xscale=obj_player.image_xscale
 image_yscale=-1
 image_angle=170*obj_player.image_xscale
}

if step<10
{
 image_angle-=(5)*-image_xscale
}

if step>10 and step<20
{
 image_angle-=(5)*image_xscale
}

if step<20
{
 y=obj_player.y+3
 x=obj_player.x-(10*image_xscale)-(step*-obj_player.image_xscale)
 blur(0.02,0.1)
}


if step>30
{
 y=obj_player.y+3
 x=obj_player.x-((step-30)*(obj_player.image_xscale*2))
 blur(0.02,0.2) 
}


if step>30 and shot=false
{ 
 shot=true
 alarm[9]=70/global.f_attackspeed
 earlystop=false
 n.attacked=true
 n.agro=obj_player
 n.hp-=global.dmg_basic_attack
 counter(n.x,n.y-n.sprite_height,global.dmg_basic_attack,c_red,global.normalfont)
 if global.f_lifesteal>0
 {
  global.hp+=global.dmg_basic_attack*global.f_lifesteal
  counter_heal(obj_player.x,obj_player.y-10,global.dmg_basic_attack*global.f_lifesteal)
 }
 global.sp+=global.level/2
 counter_heal_mana(obj_player.x,obj_player.y-16,global.level/2)  
}
