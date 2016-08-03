receive_package_id = argument0;
receive_package_list = argument1;
receive_package_read_position = 0;

switch(receive_package_id){
    case 7://Create object other with id, name, x, y
        var other_id = amp_read();
        var other_name = amp_read();
        var other_x = amp_read();
        var other_y = amp_read();
        //show_message("Create other player with id: "+string(other_id));
        var other_player;
        other_player = instance_create(other_x, other_y, obj_other_player);
        other_player.network_id = other_id;
        other_player.name = other_name;
    break;
    case 8://Destory object other with id, ununsed argument
        other_id = amp_read();
            with(obj_other_player){
                if(network_id==other_id){
                    instance_destroy();
                }
            }
    break;
    case 9://Other player moves, update x & y
        other_id = amp_read();
        other_x = amp_read();
        other_y = amp_read();
            with(obj_other_player){
                if(network_id==other_id){
                    x = other_x;
                    y = other_y;
                }
            }
    break;
}
