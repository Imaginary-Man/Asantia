////counter_heal(x,y,text)
i=instance_create(argument0,argument1,obj_counter_heal)
i.text=argument2
i.color=c_lime
i.font=global.normalfont
i.scale=global.f_lifesteal
//gms_instance_sync(i,is_extended,"text","color","font","scale")
