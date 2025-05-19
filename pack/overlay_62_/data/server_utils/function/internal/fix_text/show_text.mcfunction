#Called by ./hover_event

# Two cases
#  "show_text" with "value"
#    Change name to "text", Update internal text
#  "show_text" with "contents"
#    Change name to "text", update internal text

data modify storage server_utils:fix_text process_stack append value {}

data modify storage server_utils:fix_text process_stack[-1].in set from storage server_utils:fix_text process_stack[-2].out.hover_event.value
data modify storage server_utils:fix_text process_stack[-1].in set from storage server_utils:fix_text process_stack[-2].out.hover_event.contents

function server_utils:internal/fix_text/process_element

data modify storage server_utils:fix_text process_stack[-2].out.hover_event.text set from storage server_utils:fix_text process_stack[-1].out

data remove storage server_utils:fix_text process_stack[-2].out.hover_event.value
data remove storage server_utils:fix_text process_stack[-2].out.hover_event.contents

data remove storage server_utils:fix_text process_stack[-1]