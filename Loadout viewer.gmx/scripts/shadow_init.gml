///obj player
draw_set_color(c_black)

draw_ellipse(obj_player.x-13,obj_player.y+3,obj_player.x+13,obj_player.y+9,0)
//firefly
with (obj_firefly)
{
 draw_ellipse(x-2,y+12,x+2,y+14,0)
}

/////////////////////////////////////////////////////////
//critter_frog
with (critter_frog)
{
 draw_ellipse(x-5,y-1,x+5,y+2,0)
}

//oak_tree
with (obj_tree)
{
 draw_ellipse(x-20,y-6,x+20,y+6,0)
}

