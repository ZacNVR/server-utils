#Called by ./process_element

#Click events and hover events
execute if data storage server_utils:fix_text process_stack[-1].out.clickEvent run function server_utils:internal/fix_text/click_event
execute if data storage server_utils:fix_text process_stack[-1].out.hoverEvent run function server_utils:internal/fix_text/hover_event

#Extra
execute if data storage server_utils:fix_text process_stack[-1].out.extra run function server_utils:internal/fix_text/extra

#Separator, occurs in selector and nbt components
execute if data storage server_utils:fix_text process_stack[-1].out.separator run function server_utils:internal/fix_text/separator

#With, occurs in translate components
execute if data storage server_utils:fix_text process_stack[-1].out.with run function server_utils:internal/fix_text/with