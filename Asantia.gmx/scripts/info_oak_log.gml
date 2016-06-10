///
if slotid[n].item=9
{
 r_width=100
 r_height=55
 draw_set_alpha(0.8)
 draw_rectangle(slotx[n],sloty[n],slotx[n]-r_width*global.ui_size,sloty[n]+r_height*global.ui_size,0)
 draw_set_alpha(1)
 draw_sprite_ext(item_rarity,slotid[n].rarity,slotx[n]-(r_width*global.ui_size)+5*global.ui_size,sloty[n]+5*global.ui_size,global.ui_size,global.ui_size,0,c_white,1) 
 draw_sprite_ext(slotid[n].sprite_index,-1,(slotx[n]-(r_width*global.ui_size)+5*global.ui_size)+1,(sloty[n]+5*global.ui_size)+1,global.ui_size,global.ui_size,0,c_black,0.5)
 draw_sprite_ext(slotid[n].sprite_index,-1,slotx[n]-(r_width*global.ui_size)+5*global.ui_size,sloty[n]+5*global.ui_size,global.ui_size,global.ui_size,0,c_white,1)
 draw_set_font(ui_item_stats)
 draw_set_valign(fa_top)
 draw_set_halign(fa_left)
 draw_set_color(c_white)
 draw_text_transformed(slotx[n]-(r_width*global.ui_size)+25*global.ui_size,sloty[n]+3*global.ui_size,slotid[n].name,global.ui_size/3,global.ui_size/3,0)
 draw_rarity()
 ////6 steps
 draw_text_transformed(slotx[n]-(r_width*global.ui_size)+3*global.ui_size,sloty[n]+23*global.ui_size,"Material",global.ui_size/3,global.ui_size/3,0)
 //
 draw_set_color(c_gray)
 draw_text_transformed(slotx[n]-(r_width*global.ui_size)+3*global.ui_size,sloty[n]+35*global.ui_size,"Oak logs are used for a great#amount of variations.",global.ui_size/3,global.ui_size/3,0)
}
