#Called by #minecraft:load
scoreboard objectives add player_id dummy {"text":"Player ID"}
execute unless score counter player_id matches 1.. run scoreboard players add counter player_id 1

#scoreboard objectives add id_list trigger

scoreboard objectives add player_count dummy
execute store result score current player_count if entity @a
execute store result score previous player_count if entity @a

#Scoreboard objective for entities owned by a player
scoreboard objectives add owner_id

#Summon world spawn marker
execute unless entity @e[type=marker,tag=server_utils,tag=current_spawn] run summon marker ~ ~ ~ {Tags:["server_utils","current_spawn"]}
forceload add ~ ~

function #server_utils:load