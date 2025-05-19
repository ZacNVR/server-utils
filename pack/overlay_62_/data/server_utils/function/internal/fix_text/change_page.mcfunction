#Called by ./click_event
#This is to account for the "page" field in a "change_page" click event is now an int instead of a string
$data modify storage server_utils:fix_text process_stack[-1].out.click_event.page set value $(value)