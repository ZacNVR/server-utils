#Called by server_utils:internal/new_player_checks
#Running as all players
execute store result score @s server_utils_uuid0 run data get entity @s UUID[0]
execute store result score @s server_utils_uuid1 run data get entity @s UUID[1]
execute store result score @s server_utils_uuid2 run data get entity @s UUID[2]
execute store result score @s server_utils_uuid3 run data get entity @s UUID[3]