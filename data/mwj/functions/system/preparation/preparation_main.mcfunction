###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Timer System
function mwj:system/time

## Remove Entity
function mwj:system/preparation/preparation_entity

## Title Count Down
execute if score Time TICK matches 0 if score Time SECOND matches 0..60 run title @a times 5 10 5
execute if score Time TICK matches 0 if score Time SECOND matches 0..60 run title @a title [{"text":"潜伏時間","color":"red","bold":true}]
execute if score Time TICK matches 0 if score Time SECOND matches 0..60 run title @a subtitle [{"score":{"name":"Time","objective":"SECOND"},"color":"white","bold":true}]

## Sound System
execute as @a if score Time TICK matches 0 if score Time SECOND matches 4..10 run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 1..3 run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 0 run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Prepare Initially
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_set_scoreboard
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_advancement
## Recount the Number of Players
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/setting/initial_setting/set_initial_role_number
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/setting/initial_setting/set_initial_added_role_number
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/preparation/preparation_added_role_resetting
## Decide Roles
execute if score Time TICK matches 0 if score Time SECOND matches 0 unless score Time GAME matches 0 run function mwj:system/preparation/preparation_role_decision
## Give Items
execute if score Time TICK matches 0 if score Time SECOND matches 0 unless score Time GAME matches 0 run function mwj:system/preparation/preparation_item
## Title and Chat Message
execute if score Time TICK matches 0 if score Time SECOND matches 0 unless score Time GAME matches 0 run function mwj:system/preparation/preparation_title
## Reset Scoreboard
execute if score Time TICK matches 0 if score Time SECOND matches 0 unless score Time GAME matches 0 run function mwj:system/preparation/preparation_reset_scoreboard
execute if score Time GAME matches 0 run function mwj:system/finish/break_game