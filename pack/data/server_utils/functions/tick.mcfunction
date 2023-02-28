#Called by #minecraft:tick

#The following handles player ID and corresponding marker
execute as @a unless score @s server_utils_uuid0 matches ..2147483647 run function server_utils:new_player

#Registration
execute if score registration server_utils_config matches 1 as @a unless score @s registration_level >= registration_level server_utils_config run function server_utils:register_player

#execute as @a[scores={id_list=1..}] run function server_utils:id_list
#scoreboard players enable @a id_list
#scoreboard players set @a id_list 0

#Player joining mechanism
execute as @a run function server_utils:check_player_joined

#Player leaving mechanism
execute as @e[type=marker,tag=player_tracker,tag=online] run function server_utils:check_player_leave

#World spawn checking
execute unless entity @e[type=marker,tag=current_spawn,distance=0..0.1] run function server_utils:spawn_changed