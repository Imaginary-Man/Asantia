///mind_execute(x,y)
m=instance_create(argument0,argument1,MIND)
m.mind=mind
temp_x=argument0
temp_y=argument1
m.temp_x=temp_x
m.temp_y=temp_y
m.lightsource=0
m.dies=false
m.alarm[0]=1
m.color=global.c_element[global.element_]
m.element=global.element_
//sync
gms_instance_sync_var_add("dies",m.dies)
gms_instance_sync_var_add("mind",m.mind)
gms_instance_sync_var_add("element",m.element)
gms_instance_sync_var_add("color",m.color)
gms_instance_sync_var_add("lightsource",m.lightsource)
gms_instance_sync(m,is_full)

