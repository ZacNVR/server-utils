#Called by #minecraft:tick

execute as @a unless score @s server_utils_uuid0 matches ..2147483647 run function server_utils:store_uuid 

execute as @a unless score @s player_id matches 1.. run function server_utils:new_id

#execute as @a[tag=!rego] run function #server_utils:new_player

#execute as @a[scores={id_list=1..}] run function server_utils:id_list
#scoreboard players enable @a id_list
#scoreboard players set @a id_list 0

execute store result score current player_count if entity @a
execute store success score new_player player_count if score current player_count > previous player_count
execute if score new_player player_count matches 1 as @a run function server_utils:tag_new_player
execute if score new_player player_count matches 1 as @a[tag=newest] at @s run function #server_utils:player_join

execute if score current player_count < previous player_count run function #server_utils:player_leave

scoreboard players operation previous player_count = current player_count

#World spawn checking
execute if entity @e[type=marker,tag=current_spawn,distance=0..0.1] run function server_utils:spawn_changed