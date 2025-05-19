$data modify storage server_utils:fix_text input set from entity @s $(path)
function server_utils:internal/fix_text with storage server_utils:fix_text {}
$data modify entity @s $(path) set from storage server_utils:fix_text output