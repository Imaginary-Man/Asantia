///Variable declarations & Surface Creation
xsize=sprite_get_width(sprite_index)*image_xscale;//The width of the sprite/surface.
ysize=sprite_get_height(sprite_index)*image_yscale;//The height of the sprite/surface.

ob[50]=0;// Array used to count objects.

draw_alpha=0.8 //the default level of opacity
draw_col=c_black; // the defalut colour to draw the silhouette
sprite_masking=1;// This variable is used to define whether you want to use sprite masking for the silhouettes, if this is false, it will use the entire surface. Useful for keeping things efficient with walls.


silo_sf = surface_create(xsize, ysize);//Surface creation.
