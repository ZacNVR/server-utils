#Called by server_utils:internal/new_player_setup

scoreboard players operation @s player_id = #counter player_id
scoreboard players add #counter player_id 1
scoreboard players operation current_id server_utils_var = @s player_id