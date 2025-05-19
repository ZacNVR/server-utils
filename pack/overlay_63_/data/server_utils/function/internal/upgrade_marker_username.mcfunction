#Called by server_utils:internal/check_marker_username

function server_utils:fix_text/entity {path:"data.username"}
data modify entity @s data.username_format set value 63