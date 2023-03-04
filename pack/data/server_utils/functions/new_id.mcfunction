#Called by server_utils:new_player_setup

scoreboard players operation @s player_id = #counter player_id
scoreboard players add #counter player_id 1