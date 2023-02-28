#Called by server_utils:tick
#Running as all players
tag @s add server_utils_cursor0
execute as @e[type=marker,tag=player_tracker,tag=!online] if score @s owner_id = @p[tag=server_utils_cursor0] player_id run function server_utils:player_joined
tag @s remove server_utils_cursor0