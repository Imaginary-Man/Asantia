///Masking & Silhouetting.
var xoffset, yoffset;
xoffset = x-sprite_xoffset-frac(view_xview);
yoffset = y-sprite_yoffset-frac(view_yview);


if (sprite_masking) {
    draw_sprite_ext(sprite_index  ,image_index  ,x ,y ,image_xscale  ,image_yscale  ,image_angle  ,c_white  ,1);    //Draw the obscuring object if you want to make the silhouette masked by the obscuring object.
}

cols=0;     //Resetting counting variable.
with obj_player//This can be changed to your background object parent name.
{
    if collision_rectangle(xoffset  ,yoffset  ,xoffset+other.xsize  ,yoffset+other.ysize  ,id  ,0  ,0  ) && (depth>other.depth)    //Checking to see how many silhouette objects are inside boundaries, and deeper than the obscuring object.
    {
        other.ob[other.cols]=id;    //Collecting IDs.
        other.cols+=1;  //Increase counting variable.
    }
}

if cols>0 //If there is any silhouette object inside
{

    if !surface_exists(silo_sf) 
    {
        silo_sf = surface_create(xoffset, yoffset); //Making sure surface exists
    }
    
    surface_set_target(silo_sf);
    
    draw_clear_alpha(c_black  ,0); //clearing surface to RGBA(0,0,0,0)
    
    if (sprite_masking) //if we are using sprite masking
    {
                                                     //x-xoffset   y-yoffset                 
        draw_sprite_ext(sprite_index  ,image_index  ,x ,y  ,image_xscale  ,image_yscale  ,image_angle  ,c_white  ,1); //Draw the obscuring object in preparation for blending.
        
        draw_set_blend_mode_ext(7  ,6) //Source=7 (= bm_dest_alpha) and Destination=6 (= bm_inv_src_alpha)
    
 
    }
    
    ix=0; // reset counting variable
    repeat(cols) //for every object that is inside
    {
        draw_sprite_ext(ob[ix].sprite_index,ob[ix].image_index  ,ob[ix].x-xoffset,ob[ix].y-yoffset,ob[ix].image_xscale  ,ob[ix].image_yscale,ob[ix].image_angle  ,draw_col ,1); // draw their sprite at their relative position in the colour 'draw_col' defined in the object creation 
        ix+=1 //increase counting variable
    }
    
    draw_set_blend_mode(bm_normal); // reset blend mode
    surface_reset_target(); // reset surface target
    
    draw_surface_ext(silo_sf  ,xoffset ,yoffset ,1  ,1  ,0  ,c_white  ,draw_alpha); // draw the surface in the correct location
}
