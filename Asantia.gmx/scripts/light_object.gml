//light_object()
with (obj_firefly) light(x,y,100,global.fireflycolor)
if instance_exists(MIND){with (MIND){if !is_undefined(lightsource) and visible=true{light(x,y,lightsource,color)}}}

if instance_exists(MIND_P)
{
 with (MIND_P)
 {
  light(x,y,lightsource,color)
 }
}
//with (mob_trufflin) light(x,y-sprite_height/2,50)
