#Called by server_utils:triggers/list_all_ids
tellraw @s [{"text":"\n====","color":"gold"},{"text":" Player IDs ","color":"yellow"},"===="]
scoreboard players operation list_id server_utils_var = @s id_list_page
scoreboard players remove list_id server_utils_var 1
scoreboard players operation list_id server_utils_var *= ids_per_page server_utils_var
scoreboard players add list_id server_utils_var 1

scoreboard players operation list_id_final server_utils_var = @s id_list_page
scoreboard players operation list_id_final server_utils_var *= ids_per_page server_utils_var

tag @s add server_utils_cursor0
execute if score list_id server_utils_var < #counter player_id run function server_utils:triggers/list_all_ids/loop
tag @s remove server_utils_cursor0
scoreboard players reset found_marker server_utils_var

tellraw @s [{"text":"","color":"gold"},{"text":" <<< ","click_event":{"action":"run_command","command":"/trigger list_all_ids set -2"},"hover_event":{"action":"show_text","value":"Previous page"}},[{"text":"Page ","color":"yellow"},{"score":{"objective":"id_list_page","name":"@s"}}," of ",{"score":{"objective":"server_utils_var","name":"id_list_pages"}}],{"text":" >>> ","click_event":{"action":"run_command","command":"/trigger list_all_ids set -1"},"hover_event":{"action":"show_text","value":"Next page"}}]

scoreboard players reset list_id server_utils_var
scoreboard players reset list_id_final server_utils_var