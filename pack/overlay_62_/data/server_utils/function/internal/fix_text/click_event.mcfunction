#Called by ./compound
data modify storage server_utils:fix_text process_stack[-1].out.click_event set from storage server_utils:fix_text process_stack[-1].out.clickEvent
data remove storage server_utils:fix_text process_stack[-1].out.clickEvent

execute if data storage server_utils:fix_text process_stack[-1].out.click_event{action:"open_url"} run \
    data modify storage server_utils:fix_text process_stack[-1].out.click_event.url set from storage server_utils:fix_text process_stack[-1].out.click_event.value
execute if data storage server_utils:fix_text process_stack[-1].out.click_event{action:"open_file"} run \
    data modify storage server_utils:fix_text process_stack[-1].out.click_event.path set from storage server_utils:fix_text process_stack[-1].out.click_event.value
execute if data storage server_utils:fix_text process_stack[-1].out.click_event{action:"run_command"} run \
    data modify storage server_utils:fix_text process_stack[-1].out.click_event.command set from storage server_utils:fix_text process_stack[-1].out.click_event.value
execute if data storage server_utils:fix_text process_stack[-1].out.click_event{action:"suggest_command"} run \
    data modify storage server_utils:fix_text process_stack[-1].out.click_event.command set from storage server_utils:fix_text process_stack[-1].out.click_event.value
execute if data storage server_utils:fix_text process_stack[-1].out.click_event{action:"change_page"} run \
    function server_utils:internal/fix_text with storage server_utils:fix_text process_stack[-1].out.click_event

execute unless data storage server_utils:fix_text process_stack[-1].out.click_event{action:"copy_to_clipboard"} run \
    data remove storage server_utils:fix_text process_stack[-1].out.click_event.value
