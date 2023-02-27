#Called by server_utils:new_player
#Running as player-tracking marker, player has tag "new_player"
scoreboard players operation @p[tag=new_player] player_id = @s owner_id
scoreboard players operation @p[tag=new_player] registration_level = @s owner_registration_level

#How best to run the next function tag?