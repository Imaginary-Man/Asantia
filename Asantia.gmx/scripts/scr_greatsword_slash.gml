//maxsteps
maxstep=40
//body lynx
if step=0
{
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
}


if step>30 and shot=false
{ 
 shot=true
 alarm[9]=50/global.f_attackspeed
 earlystop=false
 n=obj_player.n
 n.attacked=true
 n.agro=obj_player
 n.hp-=global.f_ad
 counter(n.x,n.y-n.sprite_height,global.f_ad,c_red,global.normalfont)
}
