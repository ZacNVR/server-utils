#Called by server_utils:config
tellraw @s [{"text":"Are you sure you want to turn off the 1 minute loop?","color":"gray"}]
tellraw @s [{"text":"It is required by ","color":"gray","italic":true},{"score":{"objective":"required_configs","name":"1_min_loop"},"color":"gold"}," data pack(s)"]
tellraw @s [{"text":"[Confirm]","color":"green","clickEvent":{"action":"run_command","value":"/function server_utils:loops/1_min/force_off"}}," ",{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function server_utils:config"}}]