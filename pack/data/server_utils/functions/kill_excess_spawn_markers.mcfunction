#Called by server_utils:tick, server_utils:kill_excess_spawn_markers
kill @e[type=marker,tag=spawn_traker,limit=1]
execute store result score spawn_marker_count spawn_marker_count if entity @e[type=marker,tag=current_spawn]
execute if score spawn_marker_count spawn_marker_count matches 2.. run function server_utils:kill_excess_spawn_markers