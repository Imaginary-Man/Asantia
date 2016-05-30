///steps
if step<maxstep
{
 step+=global.f_attackspeed
}
 else
{
 earlystop=true
 shot=false
 step=0
 state=0
 if obj_player.state=1 {obj_player.state=0}
}


