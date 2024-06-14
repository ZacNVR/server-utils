#Called by server_utils:config
scoreboard players set 1_sec_loop server_utils_config 0
schedule clear server_utils:loops/1_sec
function server_utils:config