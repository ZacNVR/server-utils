#Called by server_utils:tick
tellraw @s [{"text":"====","color":"gold"},{"text":" Player IDs ","color":"yellow"},"===="]
scoreboard players set list_id server_utils_var 1
tag @s add server_utils_cursor0
function server_utils:triggers/list_ids/loop
tag @s remove server_utils_cursor0
scoreboard players reset list_id server_utils_var