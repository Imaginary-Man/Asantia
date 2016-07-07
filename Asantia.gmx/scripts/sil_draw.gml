//sil_draw()
surface_set_target(surface)
draw_clear(c_black)
d3d_set_fog(true,c_white,0,1)

//draw silhouette under 
with (obj_player) {draw_self()}
// 

d3d_set_fog(false,c_white,0,0)

//draw silhouette above
with (obj_oak_tree) {draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,0.5)}
//

 
surface_reset_target()


//draw surface
shader_set(shader_leave_silhouette)
draw_surface(surface,0,0)
shader_reset()
