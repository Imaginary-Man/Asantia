//mind_netherflare_b
if instance_exists(parent_enemy) /*and gms_instance_is_owner(id)*/ and alarm[0]=-1
{
 n=instance_nearest(x,y,parent_enemy)
 n.hp-=dmg
 n.attacked=1
 n.target=obj_player
 //gms_instance_set_real(n,"hp",n.hp)
 //gms_instance_set(n,"attacked",n.attacked)
 //gms_instance_set(n,"target",n.target) 
 counter(n.x,n.y-sprite_height,dmg,c_fuchsia,global.normalfont)
 instance_destroy() 
}
