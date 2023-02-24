#Called by server_utils:config, server_utils:load, server_utils:loops/1_min
function #server_utils:1_min_loop
schedule function server_utils:loops/1_min 60s