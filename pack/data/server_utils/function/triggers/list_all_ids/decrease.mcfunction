#Called by server_utils:triggers/list_all_ids

execute if score @s id_list_page matches 2.. run scoreboard players remove @s id_list_page 1
execute unless score @s id_list_page matches 2.. run scoreboard players set @s id_list_page 1