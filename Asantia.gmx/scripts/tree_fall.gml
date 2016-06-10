///tree_fall(sprite)
i=instance_create(x,y,obj_tree_falling)
i.sprite_index=argument0
i.depth=depth-1
if obj_player.x<x
{
 i.xscale=1
}
 else
{
 i.xscale=-1
}
