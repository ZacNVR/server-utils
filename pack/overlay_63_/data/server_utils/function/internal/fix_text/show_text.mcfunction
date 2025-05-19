#Called by ./hover_event

# Three cases
#  "show_text" with "value"
#    Update internal text
#  "show_text" with "contents"
#    Change name to "text", update internal text
#  "show_text" with "text"
#    Change name to "value"

# Process if in pack format 62 (does not require text upgrade)
data modify storage server_utils:fix_text process_stack[-1].out.hover_event.value set from storage server_utils:fix_text process_stack[-1].out.hover_event.text
execute if data storage server_utils:fix_text process_stack[-1].out.hover_event.text run return run \
    data remove storage server_utils:fix_text process_stack[-1].out.hover_event.text

# Else upgrade text etc.

data modify storage server_utils:fix_text process_stack append value {}

data modify storage server_utils:fix_text process_stack[-1].in set from storage server_utils:fix_text process_stack[-2].out.hover_event.value
data modify storage server_utils:fix_text process_stack[-1].in set from storage server_utils:fix_text process_stack[-2].out.hover_event.contents

function server_utils:internal/fix_text/process_element

data modify storage server_utils:fix_text process_stack[-2].out.hover_event.value set from storage server_utils:fix_text process_stack[-1].out

data remove storage server_utils:fix_text process_stack[-2].out.hover_event.contents

data remove storage server_utils:fix_text process_stack[-1]

