#Called by server_utils:tick
#Running as @e[type=marker,tag=player_tracker,tag=online]
tag @s add server_utils_cursor0
execute as @a if score @s player_id = @e[type=marker,tag=server_utils_cursor0,limit=1] owner_id run tag @s add server_utils_cursor1
execute unless entity @p[tag=server_utils_cursor1] run function server_utils:player_leave
tag @p[tag=server_utils_cursor1] remove server_utils_cursor1
tag @e[tag=server_utils_cursor0] remove server_utils_cursor0 