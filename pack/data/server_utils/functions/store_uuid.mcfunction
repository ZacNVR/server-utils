#Called by server_utils:tick
#Running as player without a stored UUID
execute store result score @s server_utils_uuid0 run data get entity @s UUID[0]
execute store result score @s server_utils_uuid1 run data get entity @s UUID[1]
execute store result score @s server_utils_uuid2 run data get entity @s UUID[2]
execute store result score @s server_utils_uuid3 run data get entity @s UUID[3]