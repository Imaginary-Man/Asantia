///target_player()
var search_for_id;
search_for_id = gms_self_playerid() // een of andere ID waarvan je de instantie wilt hebben
with obj_player_parent // = obj_player + obj_other_player
{
    if player_id == search_for_id
    {
        // Dit is het juiste object!
    }
}
