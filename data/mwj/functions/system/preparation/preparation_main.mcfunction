###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Timer System
function mwj:system/time

## Set Gamemode
function mwj:system/preparation/preparation_gamerule
function mwj:system/preparation/preparation_entity

## Title Count Down
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a times 5 10 5
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a title [{"score":{"name":"Time","objective":"SECOND"},"color":"green","bold":true}]

## Sound System
execute as @a if score Time TICK matches 0 if score Time SECOND matches 4..10 run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 1..3 run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 0 run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Prepare Initially
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_set_scoreboard
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_advancement
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_role_number
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_role
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_item
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_team
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_title
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_reset_scoreboard