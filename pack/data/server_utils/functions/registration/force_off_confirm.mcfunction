#Called by server_utils:config
tellraw @s [{"text":"Are you sure you want to turn off player registration?","color":"gray"}]
tellraw @s [{"text":"It is required by ","color":"gray","italic":true},{"score":{"objective":"required_configs","name":"registration"},"color":"gold"}," data pack(s)"]
tellraw @s [{"text":"[Confirm]","color":"green","clickEvent":{"action":"run_command","value":"/function server_utils:registration/force_off"}}," ",{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function server_utils:config"}}]