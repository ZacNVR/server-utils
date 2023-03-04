#Called by server_utils:check_spawn_loaded, server_utils:load

#Fix issue from v2.0.0
tag @e[type=marker,tag=player_id] add server_utils
tag @e[type=marker,tag=player_id] remove player_id

#Summon world spawn marker
execute unless entity @e[type=marker,tag=server_utils,tag=current_spawn] run summon marker ~ ~ ~ {Tags:["server_utils","current_spawn"]}
forceload add ~ ~

function #server_utils:spawn_loaded