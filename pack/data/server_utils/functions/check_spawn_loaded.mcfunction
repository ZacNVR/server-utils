#Called by server_utils:load, server_utils:check_spawn_loaded
#Only runs in Minecraft 1.19.4
execute if loaded ~ ~ ~ run function server_utils:spawn_loaded
execute unless loaded ~ ~ ~ run schedule function server_utils:check_spawn_loaded 1t