execute as @a if score @s player_id = list_id server_utils_var run tellraw @p[tag=server_utils_cursor0] [{"score":{"objective":"server_utils_var","name":"list_id"},"color":"gray"}," - ",{"selector":"@s"}]
scoreboard players add list_id server_utils_var 1
execute if score list_id server_utils_var < #counter player_id run function server_utils:triggers/list_ids/loop 