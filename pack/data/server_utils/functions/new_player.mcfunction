#Called by server_utils:tick
#Running as new player (i.e. player without stored UUID)
function server_utils:store_uuid

tag @s add server_utils_cursor0
execute as @e[type=marker,tag=server_utils,tag=player_tracker] if score @s server_utils_uuid0 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid0 if score @s server_utils_uuid1 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid1 if score @s server_utils_uuid2 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid2 if score @s server_utils_uuid3 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid3 run function server_utils:update_player

execute unless score @s player_id matches 1.. run function server_utils:new_id
execute as @e[type=marker,tag=server_utils,tag=player_tracker] if score @s owner_id = @p[tag=server_utils_cursor0] player_id run tag @p[tag=server_utils_cursor0] add server_utils_cursor1
execute as @p[tag=server_utils_cursor0,tag=!server_utils_cursor1] run function server_utils:spawn_player_marker
tag @s remove server_utils_cursor1
tag @s remove server_utils_cursor0