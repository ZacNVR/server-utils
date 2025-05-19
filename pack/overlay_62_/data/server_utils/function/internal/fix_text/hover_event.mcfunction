#Called by ./compound
data modify storage server_utils:fix_text process_stack[-1].out.hover_event set from storage server_utils:fix_text process_stack[-1].out.hoverEvent
data remove storage server_utils:fix_text process_stack[-1].out.hoverEvent

# Six cases:
#  "show_text" with "value"
#     Change name to "text", Update internal text
#  "show_text" with "contents"
#     Change name to "text", update internal text
#  "show_item" with "value"
#  "show_item" with "contents"
#  "show_entity" with "value"
#  "show_entity" with "contents"

execute if data storage server_utils:fix_text process_stack[-1].out.hover_event{action:"show_text"} run return run function server_utils:internal/fix_text/show_text
execute if data storage server_utils:fix_text process_stack[-1].out.hover_event{action:"show_item"} run return run function server_utils:internal/fix_text/show_item
execute if data storage server_utils:fix_text process_stack[-1].out.hover_event{action:"show_entity"} run return run function server_utils:internal/fix_text/show_entity