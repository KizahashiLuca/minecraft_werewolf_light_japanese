###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
###############################

## count down
function mwj:system/time

execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a times 5 10 5
execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a title [{"score":{"name":"Time","objective":"Limit"},"color":"green","bold":true}]
execute as @a if score Time TIME matches 0 if score Time Limit matches 4..10 run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a if score Time TIME matches 0 if score Time Limit matches 1..3 run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a if score Time TIME matches 0 if score Time Limit matches 0 run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1
execute if score Time TIME matches 0 if score Time Limit matches 0 run function mwj:system/prepare/game_prepare_init
execute if score Time TIME matches 0 if score Time Limit matches 0 run function mwj:system/prepare/game_prepare_role
execute if score Time TIME matches 0 if score Time Limit matches 0 run function mwj:system/prepare/game_prepare_item
execute if score Time TIME matches 0 if score Time Limit matches 0 run function mwj:system/prepare/game_title
