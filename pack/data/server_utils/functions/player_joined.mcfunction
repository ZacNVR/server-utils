#Called by server_utils:check_player_joined
#Running as player-tracking marker (corresponding player has tag "server_utils_cursor0")
tag @s add online
execute as @p[tag=server_utils_cursor0] run function #server_utils:player_join