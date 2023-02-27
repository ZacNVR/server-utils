summon marker ~ ~ ~ {Tags:["player_id","spawnlocked","player_tracker","current_player"]}
scoreboard players operation @e[type=marker,tag=current_player] owner_id = @s player_id
scoreboard players operation @e[type=marker,tag=current_player] server_utils_uuid0 = @s server_utils_uuid0
scoreboard players operation @e[type=marker,tag=current_player] server_utils_uuid1 = @s server_utils_uuid1
scoreboard players operation @e[type=marker,tag=current_player] server_utils_uuid2 = @s server_utils_uuid2
scoreboard players operation @e[type=marker,tag=current_player] server_utils_uuid3 = @s server_utils_uuid3
tag @e[type=marker,tag=current_player] remove current_player
