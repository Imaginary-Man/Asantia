/// draw_name(x,y,textColor,outlineColor,width,name,level);
if global.ui_name_show_other and visible=true 
{
 var xx=argument0;
 var yy=argument1;
 var tcolor=argument2;
 var ocolor=argument3;
 var width=argument4;
 var text=argument5;
 var level=argument6;
 var size=global.name_font_size/1.5
 draw_set_halign(fa_center)
 draw_set_valign(fa_center)
 draw_set_color(ocolor);
 //name
 draw_set_font(global.name_font) 
 draw_text_transformed(xx-global.name_font_size, yy, text,global.name_font_size,global.name_font_size,0);
 draw_text_transformed(xx+global.name_font_size, yy, text,global.name_font_size,global.name_font_size,0);
 draw_text_transformed(xx,yy-global.name_font_size, text,global.name_font_size,global.name_font_size,0);
 draw_text_transformed(xx,yy+global.name_font_size, text,global.name_font_size,global.name_font_size,0);
 draw_set_color(tcolor);
 draw_text_transformed(xx, yy, text,global.name_font_size,global.name_font_size,0);
 draw_set_color(c_black)
 //level
 draw_set_font(global.name_font) 
 draw_text_transformed(xx-size, yy-(34*size), "Lv  "+string(level),size,size,0);
 draw_text_transformed(xx+size, yy-(34*size), "Lv  "+string(level),size,size,0);
 draw_text_transformed(xx,(yy-(34*size))-size,"Lv  "+string(level),size,size,0);
 draw_text_transformed(xx,(yy-(34*size))+size,"Lv  "+string(level),size,size,0);
 draw_set_color(tcolor);
 draw_text_transformed(xx, yy-(34*size), "Lv  "+string(level),size,size,0);
 draw_set_color(c_black)
}
