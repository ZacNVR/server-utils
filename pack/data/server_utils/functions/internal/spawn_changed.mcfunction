#Called by server_utils:internal/tick

#Teleport entites
tp @e[tag=spawnlocked] ~ ~ ~
tp @e[type=chest_minecart,tag=server_utils] ~ -59 ~

function #server_utils:spawn_changed

#Change force load (force load is necessary to ensure entities are not unloaded before getting teleported)
execute at @e[type=marker,tag=current_spawn] run forceload remove ~ ~
tp @e[type=marker,tag=current_spawn] ~ ~ ~
forceload add ~ ~