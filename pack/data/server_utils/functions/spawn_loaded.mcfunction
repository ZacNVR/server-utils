#Called by server_utils:check_spawn_loaded, server_utils:load

#Fix issue from v2.0.0
tag @e[type=marker,tag=player_id] add server_utils
tag @e[type=marker,tag=player_id] remove player_id

#Update player-tracking markers with username
execute as @e[type=marker,tag=server_utils,tag=player_tracker] unless data entity @s data.username run data modify entity @s data.username set value '"Unknown"'

#Kill player-tracking markers with ID of zero (or less)
kill @e[type=marker,tag=server_utils,tag=player_tracker,scores={owner_id=..0}]

#Kill excess spawn markers
kill @e[type=marker,tag=server_utils,tag=current_spawn]

#Summon world spawn marker
summon marker ~ ~ ~ {Tags:["server_utils","current_spawn"]}
forceload add ~ ~

function #server_utils:spawn_loaded