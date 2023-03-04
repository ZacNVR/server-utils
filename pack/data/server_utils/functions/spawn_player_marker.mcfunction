#Called by server_utils:new_player_setup
#Running as @p[tag=server_utils_cursor0,tag=!server_utils_cursor1]

summon marker ~ ~ ~ {Tags:["player_id","spawnlocked","player_tracker","server_utils_cursor2"]}
scoreboard players operation @e[type=marker,tag=server_utils_cursor2] owner_id = @s player_id
scoreboard players operation @e[type=marker,tag=server_utils_cursor2] server_utils_uuid0 = @s server_utils_uuid0
scoreboard players operation @e[type=marker,tag=server_utils_cursor2] server_utils_uuid1 = @s server_utils_uuid1
scoreboard players operation @e[type=marker,tag=server_utils_cursor2] server_utils_uuid2 = @s server_utils_uuid2
scoreboard players operation @e[type=marker,tag=server_utils_cursor2] server_utils_uuid3 = @s server_utils_uuid3
tag @e[type=marker,tag=server_utils_cursor2] remove server_utils_cursor2
