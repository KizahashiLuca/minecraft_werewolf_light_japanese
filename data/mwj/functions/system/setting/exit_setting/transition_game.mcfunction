###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Prepare Initially
function mwj:system/preparation/preparation_entity
function mwj:system/preparation/preparation_set_scoreboard
function mwj:system/preparation/preparation_advancement
## Recount the Number of Players
function mwj:system/setting/initial_setting/set_initial_role_number
function mwj:system/setting/initial_setting/set_initial_added_role_number
function mwj:system/preparation/preparation_added_role_resetting
## Decide Roles
execute unless score Time GAME matches 0 run function mwj:system/preparation/preparation_role_decision
## Give Items
execute unless score Time GAME matches 0 run function mwj:system/preparation/preparation_item
## Title and Chat Message
execute unless score Time GAME matches 0 run function mwj:system/preparation/preparation_title
## Reset Scoreboard
execute unless score Time GAME matches 0 run function mwj:system/preparation/preparation_reset_scoreboard
execute if score Time GAME matches 0 run function mwj:system/finish/break_game

playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1