///plus_exp(x,y,color,scale)
i=instance_create(argument0,argument1,obj_exp)
i.text=xp
i.color=argument2
i.scale=argument3

gms_instance_sync_var_add("text",i.text)
gms_instance_sync_var_add("color",i.color)
gms_instance_sync_var_add("crit",i.scale)
gms_instance_sync(i,is_extended)
