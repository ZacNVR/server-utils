#Called by server_utils:new_player
#Running as player-tracking marker, player has tag "new_player"
scoreboard players operation @p[tag=new_player] player_id = @s owner_id
scoreboard players operation @p[tag=new_player] registration_level = @s owner_registration_level

tag @s add current_player
tag @p[tag=new_player] add current_player
execute as @p[tag=current_player] run function #server_utils:player_changed_name
tag @e[tag=current_player] remove current_player