///obj player
draw_set_color(c_black)

if floor(obj_player.image_index)=0
{
 draw_ellipse(obj_player.x-11,obj_player.y+3,obj_player.x+10,obj_player.y+8,0)
}
if floor(obj_player.image_index)=1
{
 draw_ellipse(obj_player.x-12,obj_player.y+3,obj_player.x+11,obj_player.y+8,0)
}
if floor(obj_player.image_index)=2
{
 draw_ellipse(obj_player.x-13,obj_player.y+3,obj_player.x+12,obj_player.y+8,0)
}
if floor(obj_player.image_index)=3
{
 draw_ellipse(obj_player.x-13,obj_player.y+3,obj_player.x+12,obj_player.y+8,0)
}
if floor(obj_player.image_index)=4
{
 draw_ellipse(obj_player.x-12,obj_player.y+3,obj_player.x+11,obj_player.y+8,0)
}
if floor(obj_player.image_index)=5
{
 draw_ellipse(obj_player.x-11,obj_player.y+3,obj_player.x+10,obj_player.y+8,0)
}
/////////////////////////////////////////////////////////
//decoration objects
with (obj_deco_parent)
{
 draw_ellipse(x-(sprite_width/2)-2,y-1,x+(sprite_width/2)+1,y+2,0)
}

//critter_frog
with (critter_frog)
{
 draw_ellipse(x-5,y-1,x+5,y+2,0)
}

//oak_tree
with (obj_oak_tree)
{
 if cut=false{draw_ellipse(x-20,y-6,x+20,y+6,0)} else {draw_ellipse(x-15,y-3,x+15,y+3,0)}
}

//Projectiles


///enemies

//with (mob_cave_bat)
//{
// draw_ellipse(x-5,y-2,x+5,y+2,0)
//}
with (mob_trufflin)
{
 draw_ellipse(x-11,y-2,x+10,y+2,0)
}
//with (mob_larvin)
//{
// draw_ellipse(x-11,y-2,x+10,y+2,0)
//}
