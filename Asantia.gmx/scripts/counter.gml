///counter(x,y,text,color,global.normalfont)
i=instance_create(argument0,argument1,obj_counter)
i.text=argument2
i.color=argument3
i.font=argument4
if argument3=c_red {i.crit=global.critical} else {i.crit=0}
i.element=global.element_
/*
gms_instance_sync_var_add("element",i.element)
gms_instance_sync_var_add("text",i.text)
gms_instance_sync_var_add("color",i.color)
gms_instance_sync_var_add("font",i.font)
gms_instance_sync_var_add("crit",i.crit)
gms_instance_sync(i,is_extended)
