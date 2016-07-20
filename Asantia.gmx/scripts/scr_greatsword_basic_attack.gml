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
 image_angle=0
}


if step>0
{
 y=obj_player.y+3
 x=obj_player.x
}

if step<37
{
 image_angle=(image_xscale*-1)*(step*5)
 blur(0.02,0.2,c_white,false)
}


if step>30 and shot=false
{ 
 shot=true
 alarm[9]=50/global.f_attackspeed
 earlystop=false
 if instance_exists(n)
 {
  n.attacked=1
  n.hp-=global.dmg_basic_attack
  target_player()
  gms_instance_set_real(n,"hp",n.hp)
  gms_instance_set_real(n,"target",n.target)
  gms_instance_set_real(n,"attacked",n.attacked)
  counter(n.x,n.y-n.sprite_height,global.dmg_basic_attack,c_red,global.normalfont)
  if global.f_lifesteal>0
  {
   global.hp+=global.dmg_basic_attack*global.f_lifesteal
   counter_heal(obj_player.x,obj_player.y-10,global.dmg_basic_attack*global.f_lifesteal)
  }
 }
}
