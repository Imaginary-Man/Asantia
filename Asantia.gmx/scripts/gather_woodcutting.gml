//maxsteps
maxstep=140
//body lynx
if step>0
{
 image_xscale=obj_player.image_xscale
 y=obj_player.y+2
 image_yscale=1
 x=obj_player.x-(6*obj_player.image_xscale)
}

if step<20
{
 image_angle-=5*image_xscale
}

if step>20 and step<60
{
 image_angle+=3*image_xscale
}

if step=140
{
 if n.class="oak tree"
 {
  with (obj_gui)
  {
   item_add(9,1,1)
  }
 }
 if obj_player.state=20 {obj_player.state=0}
 n.stack-=1
 instance_destroy()
}

