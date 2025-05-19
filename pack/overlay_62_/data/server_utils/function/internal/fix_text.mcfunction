#Called by server_utils:fix_text/block, server_utils:fix_text/entity, server_utils:fix_text/storage

data modify storage server_utils:fix_text process_stack append value {}
$data modify storage server_utils:fix_text process_stack[0].in set value $(input)

#If input was a plain (non-JSON) string, copy text as-is
execute unless data storage server_utils:fix_text process_stack[0].in run \
    data remove storage server_utils:fix_text process_stack
execute unless data storage server_utils:fix_text process_stack run \ 
    return run data modify storage server_utils:fix_text output set from storage server_utils:fix_text input

#This additional processing step is necessary to correct changes to click/hover events
function server_utils:internal/fix_text/process_element

data modify storage server_utils:fix_text output set from storage server_utils:fix_text process_stack[0].out
data remove storage server_utils:fix_text process_stack