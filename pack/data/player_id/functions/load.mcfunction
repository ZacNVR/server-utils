#Called by #minecraft:load
scoreboard objectives add player_id dummy {"text":"Player ID"}
execute unless score counter player_id matches 1.. run scoreboard players add counter player_id 1

#scoreboard objectives add id_list trigger

scoreboard objectives add player_count dummy
execute store result score current player_count if entity @a
execute store result score previous player_count if entity @a

summon marker ~ ~ ~ {CustomName:"\"Player ID\""}
execute as @e[name="Player ID",type=marker] run say Player ID v1.2.1 successfully loaded.
kill @e[name="Player ID",type=marker]