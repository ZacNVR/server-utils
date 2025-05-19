$data modify storage server_utils:fix_text input set from block ~ ~ ~ $(path)
function server_utils:internal/fix_text with storage server_utils:fix_text {}
$data modify block ~ ~ ~ $(path) set from storage server_utils:fix_text output