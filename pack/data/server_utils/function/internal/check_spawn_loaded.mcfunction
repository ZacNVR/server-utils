#Called by server_utils:internal/load, server_utils:internal/check_spawn_loaded
#Only runs in Minecraft 1.20+
execute if loaded ~ ~ ~ run function server_utils:internal/spawn_loaded
execute unless loaded ~ ~ ~ run schedule function server_utils:internal/check_spawn_loaded 1t
return 1