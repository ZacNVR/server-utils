#Called by server_utils:tick
#Running as player to be registered

function #server_utils:register_player

scoreboard players operation @s registration_level = registration_level server_utils_config
tag @s add current_player
execute as @e[type=marker,tag=player_tracker] if score @s owner_id = @p[tag=current_player] player_id run scoreboard players operation @s owner_registration_level = registration_level server_utils_config
tag @p[tag=current_player] remove current_player