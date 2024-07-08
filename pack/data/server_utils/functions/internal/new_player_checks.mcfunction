#Called by server_utils:player_joined
#Running as all players who joined in the last tick
function server_utils:store_uuid

tag @s add server_utils_cursor0
execute as @e[type=marker,tag=server_utils,tag=player_tracker] if score @s server_utils_uuid0 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid0 if score @s server_utils_uuid1 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid1 if score @s server_utils_uuid2 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid2 if score @s server_utils_uuid3 = @a[tag=server_utils_cursor0,limit=1] server_utils_uuid3 unless score @s owner_id = @a[tag=server_utils_cursor0,limit=1] player_id run function server_utils:update_player

execute as @e[type=marker,tag=server_utils,tag=player_tracker] if score @s owner_id = @p[tag=server_utils_cursor0] player_id run tag @p[tag=server_utils_cursor0] add server_utils_cursor1
execute as @s[tag=server_utils_cursor0,tag=!server_utils_cursor1] run function server_utils:new_player_setup

function server_utils:store_username

tag @s remove server_utils_cursor1
tag @s remove server_utils_cursor0