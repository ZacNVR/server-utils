#Called by server_utils:new_player_setup and server_utils:update_player
#Running as player
scoreboard players operation name_id server_utils_var = @s player_id
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,HandItems:[{id:"minecraft:stone",count:1b},[]],Invisible:1b,Tags:["server_utils","name_storage"]}
item modify entity @e[tag=server_utils,tag=name_storage] weapon.mainhand server_utils:get_username
execute as @e[type=marker,tag=player_tracker] if score @s owner_id = name_id server_utils_var run data modify entity @s data.username set from entity @e[tag=server_utils,tag=player_storage,limit=1] HandItems[0].tag.display.Name
kill @e[tag=server_utils,tag=name_storage]
scoreboard players reset name_id server_utils_var