///glow_draw(sprite, subimg, x, y, alpha);
// Copyright 2012   ing. Guus Thissen aka Phantom107
 
draw_set_color(c_white);
var i, a, o;
i = -1;
repeat 11
begin
    i += 1;
 
    a = lengthdir_x(argument4, 270+180*(i/9));
    o = (i-6)*4 + 24;
    draw_surface_ext(global.glow_surface, argument2+o-18, argument3, 2, 2, 0, c_white, a);
    draw_surface_ext(global.glow_surface, argument2, argument3+o-18, 2, 2, 0, c_white, a);    
end;    
draw_sprite(argument0, argument1, argument2, argument3);
