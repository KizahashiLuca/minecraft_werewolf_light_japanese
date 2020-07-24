###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Process the timer system
function mwj:system/time/time

## Remove Entity
function mwj:system/preparation/preparation_entity

## Prepare Initially
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/preparation/preparation_set_scoreboard
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/preparation/preparation_advancement
## Recount the Number of Players
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/initial_setting/set_initial_role_number
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/initial_setting/set_initial_added_role_number
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/preparation/preparation_added_role_resetting
## Decide Roles
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 unless score #MWL Phase matches 0 run function mwj:system/preparation/preparation_role_decision
## Give Items
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 unless score #MWL Phase matches 0 run function mwj:system/preparation/preparation_item
## Title and Chat Message
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 unless score #MWL Phase matches 0 run function mwj:system/preparation/preparation_title
## Reset Scoreboard
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 unless score #MWL Phase matches 0 run function mwj:system/preparation/preparation_reset_scoreboard
execute if score #MWL Phase matches 0 run function mwj:system/finish/break_game