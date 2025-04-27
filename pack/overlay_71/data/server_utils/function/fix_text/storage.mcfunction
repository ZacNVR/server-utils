$data modify storage server_utils:fix_text input set from storage $(storage) $(path)
function server_utils:internal/fix_text with storage server_utils:fix_text {}
$data modify storage $(storage) $(path) set from storage server_utils:fix_text output