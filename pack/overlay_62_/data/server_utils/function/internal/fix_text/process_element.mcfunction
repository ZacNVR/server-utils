#Called by ./../fix_text, ./list, ./extra
#List
execute if data storage server_utils:fix_text process_stack[-1].in[] run return run function server_utils:internal/fix_text/list

#If text is plain string or compound
data modify storage server_utils:fix_text process_stack[-1].out set from storage server_utils:fix_text process_stack[-1].in

#Compound
execute if data storage server_utils:fix_text process_stack[-1].in{} run function server_utils:internal/fix_text/compound
