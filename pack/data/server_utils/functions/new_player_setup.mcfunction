#Called by server_utils:new_player_checks
#Running as players without marker (and without correct ID). @s[tag=server_utils_cursor0,tag=!server_utils_cursor1]
execute as @e[type=marker,tag=player_tracker] if score @s owner_id = @a[tag=server_utils_cursor0,limit=1] player_id run tag @a[tag=server_utils_cursor0,limit=1] add server_utils_cursor2

#Runs for new players with someone else's former username
execute if score @s[tag=server_utils_cursor2] player_id matches 0.. run function server_utils:new_id

#Runs for entirely new players
execute unless score @s player_id matches 0.. run function server_utils:new_id

tag @s[tag=server_utils_cursor2] remove server_utils_cursor2
function server_utils:spawn_player_marker
function server_utils:store_username