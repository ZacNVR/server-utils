#Called by ./../show_item, ./prep_lore

data modify storage server_utils:fix_text item.lore append value {}
data modify storage server_utils:fix_text item.lore[-1].text set from storage server_utils:fix_text process_stack[-1].out.hover_event.components."minecraft:lore"[0]

data remove storage server_utils:fix_text process_stack[-1].out.hover_event.components."minecraft:lore"[0]

execute if data storage server_utils:fix_text process_stack[-1].out.hover_event.components."minecraft:lore"[0] run function server_utils:internal/fix_text/item/prep_lore