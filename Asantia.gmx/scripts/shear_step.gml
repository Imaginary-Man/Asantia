///shear_step(bounce)
shear*=argument0

with (obj_player)
{
 if place_meeting(x,y,other)
 {
  other.shear+=image_xscale*(point_distance(x,y-7,other.x,other.y)/80)
 }
}

with (parent_enemy)
{
 if place_meeting(x,y,other)
 {
  other.shear+=(-image_xscale)*(point_distance(x,y,other.x,other.y)/80)
 }
}
