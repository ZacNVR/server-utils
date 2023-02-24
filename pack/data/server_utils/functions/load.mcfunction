#Called by #minecraft:load
scoreboard objectives add player_id dummy {"text":"Player ID"}
execute unless score counter player_id matches 1.. run scoreboard players add #counter player_id 1

#scoreboard objectives add id_list trigger

scoreboard objectives add player_count dummy
execute store result score current player_count if entity @a
execute store result score previous player_count if entity @a

#Scoreboard objective for entities owned by a player
scoreboard objectives add owner_id

#Scoreboard objectives for Server Utils configs
scoreboard objectives add server_utils_config
scoreboard objectives add required_configs

scoreboard players set 1_sec_loop required_configs 0
scoreboard players set 10_sec_loop required_configs 0
scoreboard players set 1_min_loop required_configs 0
scoreboard players set registration required_configs 0

execute unless score registration_level server_utils_config matches 1.. run scoreboard players set registration_level server_utils_config 1

#Summon world spawn marker
execute unless entity @e[type=marker,tag=server_utils,tag=current_spawn] run summon marker ~ ~ ~ {Tags:["server_utils","current_spawn"]}
forceload add ~ ~

function #server_utils:load