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
 x=obj_player.x+(15*-obj_player.image_xscale)
 image_yscale=1
 image_angle=0
 y=obj_player.y
}

if step>20 and step<40
{
 image_angle-=10*image_xscale
 blur(0.02,0.2,c_white,false)
}

if step>30 and shot=false
{
 alarm[9]=80/global.f_attackspeed
 i=instance_create(x,y,obj_ringblade_throw)
 i.sprite_index=sprite_index
 i.image_xscale=image_xscale
 i.n=n
 i.point=point_direction(i.x,i.y,n.x,n.y)
 shot=true
 drawn=0
 //
 gms_instance_sync_var_add("point",i.point)
 gms_instance_sync_var_add("sprite_index",i.sprite_index)
 gms_instance_sync(i,is_full)
}
