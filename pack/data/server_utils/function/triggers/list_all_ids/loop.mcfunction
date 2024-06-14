#Called by server_utils:triggers/list_all_ids/list, server_utils:triggers/list_all_ids/loop
scoreboard players set found_marker server_utils_var 0
execute as @e[type=marker,tag=player_tracker] if score @s owner_id = list_id server_utils_var run function server_utils:triggers/list_all_ids/display_username
execute if score found_marker server_utils_var matches 0 run tellraw @s [{"score":{"objective":"server_utils_var","name":"list_id"},"color":"gray"}," - Unknown"]
scoreboard players add list_id server_utils_var 1
execute if score list_id server_utils_var < #counter player_id if score list_id server_utils_var <= list_id_final server_utils_var run function server_utils:triggers/list_all_ids/loop 