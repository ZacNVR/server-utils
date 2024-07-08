#Called by server_utils:internal/tick
#Running as all players
scoreboard players operation current_id server_utils_var = @s player_id
scoreboard players set online_marker server_utils_var 0
execute as @e[type=marker,tag=player_tracker,tag=online] if score @s owner_id = current_id server_utils_var run scoreboard players set online_marker server_utils_var 1

execute if score online_marker server_utils_var matches 0 run function server_utils:internal/player_joined