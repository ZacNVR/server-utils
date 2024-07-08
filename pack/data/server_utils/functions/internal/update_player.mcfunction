#Called by server_utils:new_player_checks
#Running as player-tracking marker, player has tag "server_utils_cursor0"
scoreboard players operation @p[tag=server_utils_cursor0] player_id = @s owner_id
scoreboard players operation @p[tag=server_utils_cursor0] registration_level = @s owner_registration_level
scoreboard players operation current_id server_utils_var = @s owner_id

tag @s add current_player
tag @p[tag=server_utils_cursor0] add current_player
execute as @p[tag=current_player] run function server_utils:internal/store_username
execute as @p[tag=current_player] run function #server_utils:player_changed_name
tag @e[tag=current_player] remove current_player