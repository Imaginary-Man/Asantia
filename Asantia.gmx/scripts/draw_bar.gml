///draw_bar(bar_x,bar_y,bar_width,bar_height,value,maxvalue,color)
bar_x=argument0 //x position of the bar
bar_y=argument1 //y position of the bar
bar_width=argument2 //change to the width of your bar
bar_height=argument3 //change to the height of your bar
draw_rectangle_colour(bar_x,bar_y,bar_x+bar_width,bar_y+bar_height,c_black,c_black,c_black,c_white,0)
draw_rectangle_colour(bar_x,bar_y,bar_x+bar_width*argument4/argument5,bar_y+bar_height,argument6,argument6,argument6,argument6,0)
draw_rectangle_colour(bar_x,bar_y,bar_x+bar_width,bar_y+bar_height,c_black,c_black,c_black,c_black,1)
