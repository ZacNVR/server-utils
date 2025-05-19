#Called by #minecraft:load
scoreboard objectives add player_id dummy {"text":"Player ID"}
execute unless score #counter player_id matches 1.. run scoreboard players set #counter player_id 1

#Updates from Player ID v1
execute if score counter player_id matches 1.. run scoreboard players operation #counter player_id = counter player_id
execute if score counter player_id matches 1.. run scoreboard players reset counter player_id

#Removes obsolete objectives from previous versions
scoreboard objectives remove player_count
scoreboard objectives remove spawn_marker_count

#Triggers
scoreboard objectives add list_ids trigger
scoreboard objectives add list_all_ids trigger
scoreboard objectives add get_username trigger

scoreboard objectives add id_list_page dummy

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

#Scoreboard objective for internal variables
scoreboard objectives add server_utils_var dummy
execute unless score ids_per_page server_utils_var matches 1.. run scoreboard players set ids_per_page server_utils_var 10

#Put settings to default values
#-1 = forced off (overrides requirements)
#0 = off (default)
#1 = on
execute unless score 1_sec_loop server_utils_config matches -1..1 run scoreboard players set 1_sec_loop server_utils_config 0
execute unless score 10_sec_loop server_utils_config matches -1..1 run scoreboard players set 10_sec_loop server_utils_config 0
execute unless score 1_min_loop server_utils_config matches -1..1 run scoreboard players set 1_min_loop server_utils_config 0
execute unless score registration server_utils_config matches -1..1 run scoreboard players set registration server_utils_config 0

execute unless score registration_level server_utils_config matches 1.. run scoreboard players set registration_level server_utils_config 1

execute unless score list_ids server_utils_config matches 0..1 run scoreboard players set list_ids server_utils_config 0
execute unless score list_all_ids server_utils_config matches 0..1 run scoreboard players set list_all_ids server_utils_config 0
execute unless score get_username server_utils_config matches 0..1 run scoreboard players set get_username server_utils_config 0

#Set required configs to 0 (to be increased in #server_utils:load)
scoreboard players set 1_sec_loop required_configs 0
scoreboard players set 10_sec_loop required_configs 0
scoreboard players set 1_min_loop required_configs 0
scoreboard players set registration required_configs 0

function #server_utils:load

#Run functions after world spawn loads
#Runs server_utils:check_spawn_loaded in Minecraft 1.20+, waits one second in older versions
execute store success score version_check server_utils_var run function server_utils:internal/check_spawn_loaded
execute if score version_check server_utils_var matches 0 run schedule function server_utils:internal/spawn_loaded 1s
scoreboard players reset version_check server_utils_var

#Turn on required features that are not forced off
execute if score 1_sec_loop required_configs matches 1.. unless score 1_sec_loop server_utils_config matches -1 run scoreboard players set 1_sec_loop server_utils_config 1
execute if score 10_sec_loop required_configs matches 1.. unless score 10_sec_loop server_utils_config matches -1 run scoreboard players set 10_sec_loop server_utils_config 1
execute if score 1_min_loop required_configs matches 1.. unless score 1_min_loop server_utils_config matches -1 run scoreboard players set 1_min_loop server_utils_config 1
execute if score registration required_configs matches 1.. unless score registration server_utils_config matches -1 run scoreboard players set registration server_utils_config 1

#Begin loops
execute if score 1_sec_loop server_utils_config matches 1 run function server_utils:loops/1_sec
execute if score 10_sec_loop server_utils_config matches 1 run function server_utils:loops/10_sec
execute if score 1_min_loop server_utils_config matches 1 run function server_utils:loops/1_min