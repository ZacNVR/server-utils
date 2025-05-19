#Called by ./process_element, ./list

#End loop if end of component
execute unless data storage server_utils:fix_text process_stack[-1].in[0] run return 0

#Process next list item
data modify storage server_utils:fix_text process_stack append value {}
data modify storage server_utils:fix_text process_stack[-1].in set from storage server_utils:fix_text process_stack[-2].in[0]
data remove storage server_utils:fix_text process_stack[-2].in[0]

function server_utils:internal/fix_text/process_element

data modify storage server_utils:fix_text process_stack[-2].out append from storage server_utils:fix_text process_stack[-1].out
data remove storage server_utils:fix_text process_stack[-1]

#Repeat loop
function server_utils:internal/fix_text/list