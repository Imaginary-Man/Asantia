///glow_prepare(sprite, subimg, color)
// Copyright 2012   ing. Guus Thissen aka Phantom107
 
surface_free(global.glow_surface);
 
var w, h;
w = sprite_get_width(argument0);
h = sprite_get_height(argument0);
 
global.glow_surface = surface_create(w/2, h/2);
surface_set_target(global.glow_surface);
draw_clear_alpha(0, 0);
 
texture_set_interpolation(1);
draw_set_blend_mode(bm_add);
repeat 15
begin
    draw_sprite_stretched_ext(argument0, argument1, 0, 0, w/2, h/2, argument2, 1);
end;
draw_set_blend_mode(bm_normal);
texture_set_interpolation(0);
 
surface_reset_target();
