#Called by server_utils:config
scoreboard players set 10_sec_loop server_utils_config 0
schedule clear server_utils:loops/10_sec
function server_utils:config