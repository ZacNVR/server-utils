#Called by server_utils:triggers/list_all_ids/loop
tellraw @p[tag=server_utils_cursor0] [{"score":{"objective":"server_utils_var","name":"list_id"},"color":"gray"}," - ",{"nbt":"data.username","entity":"@s","interpret":true}]
scoreboard players set found_marker server_utils_var 1