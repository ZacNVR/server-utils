#Called by ./compound
data modify storage server_utils:fix_text process_stack append value {}
data modify storage server_utils:fix_text process_stack[-1].in set from storage server_utils:fix_text process_stack[-2].out.with

function server_utils:internal/fix_text/process_element

data modify storage server_utils:fix_text process_stack[-2].out.with set from storage server_utils:fix_text process_stack[-1].out
data remove storage server_utils:fix_text process_stack[-1]