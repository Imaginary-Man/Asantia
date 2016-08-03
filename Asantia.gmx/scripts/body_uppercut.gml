//set init
maxstep=40
//body lynx
if step=0
{
 n=obj_player.n
 obj_player.state=10
 
 weaponI.state=10
 weaponI.image_xscale=obj_player.image_xscale
 weaponI.image_yscale=-1
 weaponI.x=obj_player.x
 weaponI.y=obj_player.y
 
 weaponII.image_xscale=obj_player.image_xscale
 weaponII.x=obj_player.x
}
