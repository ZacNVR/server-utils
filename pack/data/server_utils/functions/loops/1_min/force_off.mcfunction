#Called by server_utils:loops/1_min/force_off_confirm
scoreboard players set 1_min_loop server_utils_config -1
schedule clear server_utils:loops/1_min
function server_utils:config