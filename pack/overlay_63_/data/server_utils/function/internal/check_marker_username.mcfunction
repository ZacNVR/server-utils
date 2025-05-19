#Called by server_utils:internal/spawn_loaded

scoreboard players set username_format server_utils_var 0

execute store result score username_format server_utils_var run data get entity @s data.username_format
execute if score username_format server_utils_var matches ..62 run function server_utils:internal/upgrade_marker_username

scoreboard players reset username_format server_utils_var