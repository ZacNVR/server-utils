#Called by server_utils:loops/1_sec/force_off_confirm
scoreboard players set 1_sec_loop server_utils_config -1
schedule clear server_utils:loops/1_sec
function server_utils:config