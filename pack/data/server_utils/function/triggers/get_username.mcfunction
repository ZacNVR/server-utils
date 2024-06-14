#Called by server_utils:tick

scoreboard players set valid_input server_utils_var 0
execute if score @s get_username matches 1.. if score @s get_username < #counter player_id run function server_utils:triggers/get_username/success
execute if score valid_input server_utils_var matches 0 run tellraw @s {"text":"Invalid player ID","color":"red"}