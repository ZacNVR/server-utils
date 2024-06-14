#Called by server_utils:triggers/get_username
scoreboard players set valid_input server_utils_var 1

scoreboard players set found_marker server_utils_var 0
tag @s add server_utils_cursor0
execute as @e[type=marker,tag=server_utils,tag=player_tracker] if score @s owner_id = @p[tag=server_utils_cursor0] get_username run function server_utils:triggers/get_username/display_username
tag @s remove server_utils_cursor0
execute if score found_marker server_utils_var matches 0 run tellraw @s [{"text":"Player of ID ","color":"gray"},{"score":{"objective":"get_username","name":"@p[tag=server_utils_cursor0]"}},": Unknown"]
scoreboard players reset found_marker server_utils_var