///Masking & Silhouetting.

if (sprite_masking) {
    draw_sprite_ext(sprite_index  ,image_index  ,x  ,y  ,image_xscale  ,image_yscale  ,image_angle  ,c_white  ,1);    //Draw the obscuring object if you want to make the silhouette masked by the obscuring object.
}

cols=0;     //Resetting counting variable.
//

/////////////////////////////////////////////////////////////////////////////////////////
with obj_player //This can be changed to your background object parent name.
{
    if collision_rectangle(other.x-other.sprite_xoffset  ,other.y-other.sprite_yoffset  ,other.x-other.sprite_xoffset+other.xsize  ,other.y-other.sprite_yoffset+other.ysize  ,id  ,0  ,0  ) && (depth>other.depth)    //Checking to see how many silhouette objects are inside boundaries, and deeper than the obscuring object.
    {
        other.ob[other.cols]=id;    //Collecting IDs.
        other.cols+=1;  //Increase counting variable.
    }
}
with obj_move_click //This can be changed to your background object parent name.
{
    if collision_rectangle(other.x-other.sprite_xoffset  ,other.y-other.sprite_yoffset  ,other.x-other.sprite_xoffset+other.xsize  ,other.y-other.sprite_yoffset+other.ysize  ,id  ,0  ,0  ) && (depth>other.depth)    //Checking to see how many silhouette objects are inside boundaries, and deeper than the obscuring object.
    {
        other.ob[other.cols]=id;    //Collecting IDs.
        other.cols+=1;  //Increase counting variable.
    }
}
with parent_enemy //This can be changed to your background object parent name.
{
     if collision_rectangle(other.x-other.sprite_xoffset  ,other.y-other.sprite_yoffset  ,other.x-other.sprite_xoffset+other.xsize  ,other.y-other.sprite_yoffset+other.ysize  ,id  ,0  ,0  ) && (depth>other.depth)    //Checking to see how many silhouette objects are inside boundaries, and deeper than the obscuring object.
     {
         other.ob[other.cols]=id;    //Collecting IDs.
         other.cols+=1;  //Increase counting variable.
     }
}
with obj_weapon_parent //This can be changed to your background object parent name.
{
     if visible=true{
     if collision_rectangle(other.x-other.sprite_xoffset  ,other.y-other.sprite_yoffset  ,other.x-other.sprite_xoffset+other.xsize  ,other.y-other.sprite_yoffset+other.ysize  ,id  ,0  ,0  ) && (depth>other.depth)    //Checking to see how many silhouette objects are inside boundaries, and deeper than the obscuring object.
     {
         other.ob[other.cols]=id;    //Collecting IDs.
         other.cols+=1;  //Increase counting variable.
     }
}}
with obj_offhand_parent //This can be changed to your background object parent name.
{
     if collision_rectangle(other.x-other.sprite_xoffset  ,other.y-other.sprite_yoffset  ,other.x-other.sprite_xoffset+other.xsize  ,other.y-other.sprite_yoffset+other.ysize  ,id  ,0  ,0  ) && (depth>other.depth)    //Checking to see how many silhouette objects are inside boundaries, and deeper than the obscuring object.
     {
         other.ob[other.cols]=id;    //Collecting IDs.
         other.cols+=1;  //Increase counting variable.
     }
}

////////////////////////////////////////////////////////////////////////////////////////
if cols>0 //If there is any silhouette object inside
{

    if !surface_exists(silo_sf) 
    {
        silo_sf = surface_create(xsize, ysize); //Making sure surface exists
    }
    
    surface_set_target(silo_sf);
    
    draw_clear_alpha(c_black  ,0); //clearing surface to RGBA(0,0,0,0)
    
    if (sprite_masking) //if we are using sprite masking
    {
    
        draw_sprite_ext(sprite_index  ,image_index  ,sprite_xoffset  ,sprite_yoffset  ,image_xscale  ,image_yscale  ,image_angle  ,c_white  ,1); //Draw the obscuring object in preparation for blending.
        
        draw_set_blend_mode_ext(7  ,6) //Source=7 (= bm_dest_alpha) and Destination=6 (= bm_inv_src_alpha)
    
        /*
        Extended blend modes work by affecting chosen components of the colour that's to be drawn (known as the source) by a factor,
        and then affecting the chosen components of the colour that's already there (known as the destination) by a factor,
        and multiplying the new source and destination together for the resulting colour.

        Since we only need to affect alpha, the following shows a basic example of how this works using 1 as pixels with full alpha and 0 as pixels no alpha.
        
            Scenario 1:
            
            0000 <---source
            0110
            0110
            0000
            
            0000 <---destination
            0000
            0000
            0000
            
            0000 <---source with bm_dest_alpha applied
            0000
            0000
            0000
             *
            0000 <---destination with bm_inv_src_alpha applied
            0000
            0000
            0000
             =
            0000 <---what's displayed
            0000
            0000
            0000
            
            Scenario 2:
            
            0000 <---source
            0000
            0000
            0000
            
            0000 <---destination
            0110
            0110
            0000
            
            0000 <---source with bm_dest_alpha applied
            0000
            0000
            0000
             *
            0000 <---destination with bm_inv_src_alpha applied
            0110
            0110
            0000
             =
            0000 <---what's displayed
            0000
            0000
            0000
        
        
            Scenario 3:
            
            0000 <---source
            0110
            0110
            0000
            
            0000 <---destination
            0110
            0110
            0000
            
            0000 <---source with bm_dest_alpha applied
            0110
            0110
            0000
             *
            0000 <---destination with bm_inv_src_alpha applied
            0110
            0110
            0000
             =
            0000 <---what's displayed
            0110
            0110
            0000
        
            Scenario 4:
            
            0000 <---source
            0011
            0011
            0000
            
            0000 <---destination
            0110
            0110
            0000
            
            0000 <---source with bm_dest_alpha applied
            0010
            0010
            0000
             *
            0000 <---destination with bm_inv_src_alpha applied
            0010
            0010
            0000
             =
            0000 <---what's displayed
            0010
            0010
            0000
            */
    }
    
    ix=0; // reset counting variable
    repeat(cols) //for every object that is inside
    {
        draw_sprite_ext(ob[ix].sprite_index,ob[ix].image_index  ,ob[ix].x-(x-sprite_xoffset),ob[ix].y-(y-sprite_yoffset),ob[ix].image_xscale  ,ob[ix].image_yscale,ob[ix].image_angle  ,draw_col ,1); // draw their sprite at their relative position in the colour 'draw_col' defined in the object creation 
        ix+=1 //increase counting variable
    }
    
    draw_set_blend_mode(bm_normal); // reset blend mode
    surface_reset_target(); // reset surface target
    draw_surface_ext(silo_sf  ,x-sprite_xoffset  ,y-sprite_yoffset  ,1  ,1  ,0  ,c_white  ,draw_alpha); // draw the surface in the correct location    
}
 else
{
 surface_free(silo_sf)
}
