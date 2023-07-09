#Called by server_utils:tick

scoreboard players set id_list_pages server_utils_var 8
scoreboard players operation id_list_pages server_utils_var += #counter player_id
scoreboard players operation id_list_pages server_utils_var /= ids_per_page server_utils_var

#Input type
#0 upon normal input
#-1 for page increase
#-2 for page decrease
#1 for out of range value

scoreboard players set input_type server_utils_var 0
execute if score @s list_all_ids matches -2..-1 run scoreboard players operation input_type server_utils_var = @s list_all_ids
execute if score @s list_all_ids matches 1.. if score @s list_all_ids > id_list_pages server_utils_var run scoreboard players set input_type server_utils_var 1

execute if score input_type server_utils_var matches -2 run function server_utils:triggers/list_all_ids/decrease
execute if score input_type server_utils_var matches -1 run function server_utils:triggers/list_all_ids/increase
execute if score input_type server_utils_var matches 0 run scoreboard players operation @s id_list_page = @s list_all_ids
execute if score input_type server_utils_var matches -2..0 run function server_utils:triggers/list_all_ids/list
execute if score input_type server_utils_var matches 1 run tellraw @s {"text":"Invalid trigger value","color":"red"}

scoreboard players reset input_type server_utils_var