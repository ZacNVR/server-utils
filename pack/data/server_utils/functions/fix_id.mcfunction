#Called by server_utils:spawn_loaded
#Running as player-trackers with owner_id set to zero

scoreboard players operation @s owner_id = #counter player_id
scoreboard players add #counter player_id 1