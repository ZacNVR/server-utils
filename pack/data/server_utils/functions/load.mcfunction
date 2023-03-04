#Called by #minecraft:load
scoreboard objectives add player_id dummy {"text":"Player ID"}
execute unless score #counter player_id matches 1.. run scoreboard players add #counter player_id 1

#Updates from Player ID v1
execute if score counter player_id matches 1.. run scoreboard players operation #counter player_id = counter player_id
execute if score counter player_id matches 1.. run scoreboard players reset counter player_id

#Fix issue from v2.0.0
tag @e[type=marker,tag=player_id] add server_utils
tag @e[type=marker,tag=player_id] remove player_id

#scoreboard objectives add id_list trigger (unused)

#Scoreboard objective for registration level
scoreboard objectives add registration_level dummy

#Scoreboard objective for entities owned by a player
scoreboard objectives add owner_id dummy
scoreboard objectives add owner_registration_level dummy

#Scoreboard objectives for UUID comparisions
scoreboard objectives add server_utils_uuid0 dummy
scoreboard objectives add server_utils_uuid1 dummy
scoreboard objectives add server_utils_uuid2 dummy
scoreboard objectives add server_utils_uuid3 dummy

#Scoreboard objectives for Server Utils configs
scoreboard objectives add server_utils_config dummy
scoreboard objectives add required_configs dummy

#Put settings to default values
#-1 = forced off (overrides requirements)
#0 = off (default)
#1 = on
execute unless score 1_sec_loop server_utils_config matches -1..1 run scoreboard players set 1_sec_loop server_utils_config 0
execute unless score 10_sec_loop server_utils_config matches -1..1 run scoreboard players set 10_sec_loop server_utils_config 0
execute unless score 1_min_loop server_utils_config matches -1..1 run scoreboard players set 1_min_loop server_utils_config 0
execute unless score registration server_utils_config matches -1..1 run scoreboard players set registration server_utils_config 0

execute unless score registration_level server_utils_config matches 1.. run scoreboard players set registration_level server_utils_config 1

#Set required configs to 0 (to be increased in #server_utils:load)
scoreboard players set 1_sec_loop required_configs 0
scoreboard players set 10_sec_loop required_configs 0
scoreboard players set 1_min_loop required_configs 0
scoreboard players set registration required_configs 0

#Summon world spawn marker
execute unless entity @e[type=marker,tag=server_utils,tag=current_spawn] run summon marker ~ ~ ~ {Tags:["server_utils","current_spawn"]}
forceload add ~ ~

function #server_utils:load

#Turn on required features that are not forced off
execute if score 1_sec_loop required_configs matches 1.. unless score 1_sec_loop server_utils_config matches -1 run scoreboard players set 1_sec_loop server_utils_config 1
execute if score 10_sec_loop required_configs matches 1.. unless score 10_sec_loop server_utils_config matches -1 run scoreboard players set 10_sec_loop server_utils_config 1
execute if score 1_min_loop required_configs matches 1.. unless score 1_min_loop server_utils_config matches -1 run scoreboard players set 1_min_loop server_utils_config 1
execute if score registration required_configs matches 1.. unless score registration server_utils_config matches -1 run scoreboard players set registration server_utils_config 1

#Begin loops
execute if score 1_sec_loop server_utils_config matches 1 run function server_utils:loops/1_sec
execute if score 10_sec_loop server_utils_config matches 1 run function server_utils:loops/10_sec
execute if score 1_min_loop server_utils_config matches 1 run function server_utils:loops/1_min