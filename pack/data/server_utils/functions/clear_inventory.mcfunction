#Run as player to clear inventory

summon chest_minecart ~ -65 ~ {Tags:["inventory","server_utils","current"],Invulnerable:1b,NoGravity:1b}
summon chest_minecart ~ -65 ~ {Tags:["other","server_utils","current"],Invulnerable:1b,NoGravity:1b}
execute positioned ~ -65 ~ run scoreboard players operation @e[type=chest_minecart,tag=server_utils,tag=!claimed] owner_id = @s player_id
tag @e[type=chest_minecart,tag=server_utils,tag=!claimed] add claimed

item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.0 from entity @s inventory.0
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.1 from entity @s inventory.1
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.2 from entity @s inventory.2
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.3 from entity @s inventory.3
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.4 from entity @s inventory.4
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.5 from entity @s inventory.5
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.6 from entity @s inventory.6
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.7 from entity @s inventory.7
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.8 from entity @s inventory.8
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.9 from entity @s inventory.9
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.10 from entity @s inventory.10
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.11 from entity @s inventory.11
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.12 from entity @s inventory.12
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.13 from entity @s inventory.13
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.14 from entity @s inventory.14
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.15 from entity @s inventory.15
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.16 from entity @s inventory.16
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.17 from entity @s inventory.17
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.18 from entity @s inventory.18
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.19 from entity @s inventory.19
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.20 from entity @s inventory.20
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.21 from entity @s inventory.21
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.22 from entity @s inventory.22
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.23 from entity @s inventory.23
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.24 from entity @s inventory.24
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.25 from entity @s inventory.25
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=inventory] container.26 from entity @s inventory.26

item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.0 from entity @s hotbar.0
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.1 from entity @s hotbar.1
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.2 from entity @s hotbar.2
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.3 from entity @s hotbar.3
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.4 from entity @s hotbar.4
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.5 from entity @s hotbar.5
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.6 from entity @s hotbar.6
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.7 from entity @s hotbar.7
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.8 from entity @s hotbar.8
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.9 from entity @s armor.head
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.10 from entity @s armor.chest
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.11 from entity @s armor.legs
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.12 from entity @s armor.feet
item replace entity @e[type=chest_minecart,tag=server_utils,tag=current,tag=other] container.13 from entity @s weapon.offhand

tag @e[type=chest_minecart,tag=server_utils,tag=current] remove current
clear @s