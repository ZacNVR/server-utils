#Called by #minecraft:tick

#Player joining mechanism
execute as @a run function server_utils:internal/check_player_joined

#Player leaving mechanism
execute as @e[type=marker,tag=player_tracker,tag=online] run function server_utils:internal/check_player_leave

#Triggers
execute as @a if score @s list_ids matches 1.. run function server_utils:triggers/list_ids 
execute as @a if score @s list_ids matches ..-1 run function server_utils:triggers/list_ids 

execute as @a if score @s list_all_ids matches 1.. run function server_utils:triggers/list_all_ids 
execute as @a if score @s list_all_ids matches ..-1 run function server_utils:triggers/list_all_ids

execute as @a if score @s get_username matches 1.. run function server_utils:triggers/get_username 
execute as @a if score @s get_username matches ..-1 run function server_utils:triggers/get_username

scoreboard players reset @a list_ids
execute if score list_ids server_utils_config matches 1 run scoreboard players enable @a list_ids

scoreboard players reset @a list_all_ids
execute if score list_all_ids server_utils_config matches 1 run scoreboard players enable @a list_all_ids

scoreboard players reset @a get_username
execute if score get_username server_utils_config matches 1 run scoreboard players enable @a get_username

#World spawn checking
execute if entity @e[type=marker,tag=current_spawn] unless entity @e[type=marker,tag=current_spawn,distance=0..0.1] run function server_utils:internal/spawn_changed