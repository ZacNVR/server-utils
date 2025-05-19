#Called by ./show_entity

$data modify storage server_utils:fix_text process_stack[-1].out.hover_event.contents set value $(value)
function server_utils:internal/fix_text/show_entity_value_name with storage server_utils:fix_text process_stack[-1].out.hover_event.contents.name