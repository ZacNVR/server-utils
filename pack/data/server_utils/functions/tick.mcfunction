#Called by #minecraft:tick

#Player joining mechanism
execute as @a run function server_utils:check_player_joined

#Player leaving mechanism
execute as @e[type=marker,tag=player_tracker,tag=online] run function server_utils:check_player_leave

#execute as @a[scores={id_list=1..}] run function server_utils:id_list
#scoreboard players enable @a id_list
#scoreboard players set @a id_list 0

#World spawn checking
execute unless entity @e[type=marker,tag=current_spawn,distance=0..0.1] run function server_utils:spawn_changed