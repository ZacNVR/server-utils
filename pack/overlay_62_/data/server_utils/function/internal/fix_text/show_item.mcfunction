#Called by ./hover_event

#If "value" field exists
function server_utils:show_item_value with storage server_utils:fix_text process_stack[-1].out.hover_event

#If "contents" field exists and is a compound
execute if data storage server_utils:fix_text process_stack[-1].out.hover_event.contents{} run \
    data modify storage server_utils:fix_text process_stack[-1].out.hover_event merge from storage server_utils:fix_text process_stack[-1].out.hover_event.contents

#If "contents" field exists and is a string
execute if data storage server_utils:fix_text process_stack[-1].out.hover_event.contents \
    unless data storage server_utils:fix_text process_stack[-1].out.hover_event.contents{} run \
    data modify storage server_utils:fix_text process_stack[-1].out.hover_event.id set from storage server_utils:fix_text process_stack[-1].out.hover_event.contents

#Remove unneeded fields
data remove storage server_utils:fix_text process_stack[-1].out.hover_event.value
data remove storage server_utils:fix_text process_stack[-1].out.hover_event.contents

#Fix JSON text in item components
execute unless data storage server_utils:fix_text process_stack[-1].out.hover_event.components run return 0

data modify storage server_utils:fix_text item.custom_name set from storage server_utils:fix_text process_stack[-1].out.hover_event.components."minecraft:custom_name"
function server_utils:internal/fix_text/item/custom_name with storage server_utils:fix_text item.custom_name

data modify storage server_utils:fix_text item.item_name set from storage server_utils:fix_text process_stack[-1].out.hover_event.components."minecraft:item_name"
function server_utils:internal/fix_text/item/item_name with storage server_utils:fix_text item.item_name

execute if data storage server_utils:fix_text process_stack[-1].out.hover_event.components."minecraft:lore"[0] run function server_utils:internal/fix_text/item/prep_lore
function server_utils:internal/fix_text/item/lore with storage server_utils:fix_text item.lore[0]

data remove storage server_utils:fix_text item