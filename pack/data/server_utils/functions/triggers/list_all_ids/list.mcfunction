#Called by server_utils:triggers/list_all_ids
tellraw @s [{"text":"=======","color":"gold"},{"text":" Player IDs ","color":"yellow"},"======="]
scoreboard players operation list_id server_utils_var = @s id_list_page
scoreboard players remove list_id server_utils_var 1
scoreboard players operation list_id server_utils_var *= ids_per_page server_utils_var
scoreboard players add list_id server_utils_var 1

scoreboard players operation list_id_final server_utils_var = @s id_list_page
scoreboard players operation list_id_final server_utils_var *= ids_per_page server_utils_var

tag @s add server_utils_cursor0
execute if score list_id < #counter run function server_utils:triggers/list_all_ids/loop
tag @s remove server_utils_cursor0
scoreboard players reset found_marker server_utils_var

tellraw @s [{"text":"====","color":"gold"},[{"text":"","color":"yellow"},{"text":" <<< ","clickEvent":{"action":"run_command","value":"/trigger list_all_ids set -2"}},"Page ",{"score":{"objective":"id_list_page","name":"@s"}}," of ",{"score":{"objective":"server_utils_var","name":"id_list_pages"}},{"text":" >>> ","clickEvent":{"action":"run_command","value":"/trigger list_all_ids set -1"}}],"===="]

scoreboard players reset list_id server_utils_var
scoreboard players reset list_id_final server_utils_var