#Called by server_utils:internal/new_player_checks, server_utils:internal/update_player
#Running as player
scoreboard players operation name_id server_utils_var = @s player_id
summon armor_stand ~ -66 ~ {Marker:1b,NoGravity:1b,equipment:{mainhand:{id:"minecraft:stone",count:1b}},Invisible:1b,Tags:["server_utils","name_storage"]}
item modify entity @e[tag=server_utils,tag=name_storage] weapon.mainhand server_utils:get_username
execute as @e[type=marker,tag=player_tracker] if score @s owner_id = name_id server_utils_var run data modify entity @s data.username set from entity @e[tag=server_utils,tag=name_storage,limit=1] equipment.mainhand.components."minecraft:custom_name"
kill @e[tag=server_utils,tag=name_storage]
scoreboard players reset name_id server_utils_var