#Called by #minecraft:tick
execute as @a unless score @s player_id matches 1.. run function player_id:new_id

execute as @a[tag=!rego] run function #player_id:new_player

#execute as @a[scores={id_list=1..}] run function player_id:id_list
#scoreboard players enable @a id_list
#scoreboard players set @a id_list 0

execute store result score current player_count if entity @a
execute store success score new_player player_count if score current player_count > previous player_count
execute if score new_player player_count matches 1 as @a run function player_id:tag_new_player
execute if score new_player player_count matches 1 as @a[tag=newest] at @s run function #player_id:player_join

execute if score current player_count < previous player_count run function #player_id:player_leave

scoreboard players operation previous player_count = current player_count