#Called by ./hover_event

# Two cases
#  "value"
#  "contents"

#Convert "value" format to "contents" for easier management
execute if data storage server_utils:fix_text process_stack[-1].out.hover_event.value run \
    function server_utils:internal/fix_text/show_entity_value with storage server_utils:fix_text process_stack[-1].out.hover_event

#Rename and move old fields
data modify storage server_utils:fix_text process_stack[-1].out.hover_event.name set from storage server_utils:fix_text process_stack[-1].out.hover_event.contents.name
data modify storage server_utils:fix_text process_stack[-1].out.hover_event.id set from storage server_utils:fix_text process_stack[-1].out.hover_event.contents.type
data modify storage server_utils:fix_text process_stack[-1].out.hover_event.uuid set from storage server_utils:fix_text process_stack[-1].out.hover_event.contents.id

#Remove unneeded fields
data remove storage server_utils:fix_text process_stack[-1].out.hover_event.value
data remove storage server_utils:fix_text process_stack[-1].out.hover_event.contents