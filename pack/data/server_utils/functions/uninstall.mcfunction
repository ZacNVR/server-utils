scoreboard objectives remove player_id

scoreboard objectives remove owner_id

scoreboard objectives remove list_ids
scoreboard objectives remove list_all_ids
scoreboard objectives remove get_username
scoreboard objectives remove id_list_page

scoreboard objectives remove registration_level
scoreboard objectives remove owner_registration_level

scoreboard objectives remove server_utils_uuid0
scoreboard objectives remove server_utils_uuid1
scoreboard objectives remove server_utils_uuid2
scoreboard objectives remove server_utils_uuid3

scoreboard objectives remove server_utils_config
scoreboard objectives remove required_configs

scoreboard objectives remove server_utils_var

kill @e[tag=server_utils]

scoreboard objectives add uninstall_test dummy
execute store success score test uninstall_test run datapack disable "file/ServerUtilities-v2.2.2.zip"
execute if score test uninstall_test matches 0 run tellraw @s "Uninstalled Server Utilities but failed to disable the data pack. Please disable manually."
execute if score test uninstall_test matches 1 run tellraw @s "Successfully uninstalled Server Utilities!"
scoreboard objectives remove uninstall_test