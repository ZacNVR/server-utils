#Called by server_utils:triggers/get_username/success
tellraw @p[tag=server_utils_cursor0] [{"text":"Player of ID ","color":"gray"},{"score":{"objective":"get_username","name":"@p[tag=server_utils_cursor0]"}},": ",{"nbt":"data.username","entity":"@s","interpret":true}]
scoreboard players set found_marker server_utils_var 1