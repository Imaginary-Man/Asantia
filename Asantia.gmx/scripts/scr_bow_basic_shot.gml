//maxsteps
maxstep=30
//body lynx
if step=0
{
 shot=false
 obj_player.state=1
 state=1
 image_xscale=obj_player.image_xscale
 x=obj_player.x+(6*obj_player.image_xscale)
 image_yscale=1
 image_angle=0
 y=obj_player.y
}
if step<15
{
 drawn=step
}

if step>0
{
 y=obj_player.y
 x=obj_player.x+(6*obj_player.image_xscale)
}

if step>20 and shot=false
{
 alarm[9]=60/global.f_attackspeed
 instance_create(x,y,obj_arrow)
 shot=true
 drawn=0
}
