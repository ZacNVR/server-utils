#Called by ./../show_item, ./lore

$data modify storage server_utils:fix_text process_stack[-1].out.hover_event.components."minecraft:lore" append value $(text)
data remove storage server_utils:fix_text item.lore[0]

execute if data storage server_utils:fix_text item.lore[0] run \
    function server_utils:internal/fix_text/item/lore with storage server_utils:fix_text item.lore[0]