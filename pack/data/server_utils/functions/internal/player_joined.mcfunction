#Called by server_utils:internal/check_player_joined
#Running as players who joined in the last tick

#The following handles player ID and corresponding marker
execute as @a run function server_utils:internal/new_player_checks

#Registration level
execute if score registration server_utils_config matches 1 as @a unless score @s registration_level >= registration_level server_utils_config run function server_utils:internal/register_player

execute as @e[type=marker,tag=player_tracker] if score @s owner_id = current_id server_utils_var run tag @s add online
function #server_utils:player_join