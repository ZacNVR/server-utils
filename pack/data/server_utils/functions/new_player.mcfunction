#Called by server_utils:tick
function server_utils:store_uuid

tag @s add new_player
execute as @e[type=marker,tag=server_utils,tag=player_tracker] if score @s server_utils_uuid0 = @a[tag=new_player,limit=1] server_utils_uuid0 if score @s server_utils_uuid1 = @a[tag=new_player,limit=1] server_utils_uuid1 if score @s server_utils_uuid2 = @a[tag=new_player,limit=1] server_utils_uuid2 if score @s server_utils_uuid3 = @a[tag=new_player,limit=1] server_utils_uuid3 run function server_utils:update_player