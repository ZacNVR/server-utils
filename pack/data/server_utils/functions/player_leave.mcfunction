#Called by server_utils:tick
#Running as player-tracking marker whose player left in the last tick
tag @s remove online
function #server_utils:player_leave