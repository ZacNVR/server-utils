#Called by server_utils:config
execute if score registration_level server_utils_config matches 1 run tellraw @s {"text":"Cannot reduce registration level below 1","color":"red"}
execute if score registration_level server_utils_config matches 2.. run function server_utils:registration/level_down_succeed
