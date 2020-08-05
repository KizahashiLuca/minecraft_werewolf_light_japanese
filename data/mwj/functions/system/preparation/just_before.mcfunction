###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Just before setting
function mwj:system/preparation/set_scoreboard
function mwj:system/finish/revoke_advancements

## Recount the Number of Players
function mwj:system/setting/initial_setting/set_role_number
function mwj:system/setting/initial_setting/set_added_role_number
function mwj:system/preparation/reset_added_role
## Dummy Role
execute unless score #MWL Phase matches 0 if score #MWL SetDummyRole matches 1 run function mwj:system/preparation/set_dummy_role
## Decide Roles
execute unless score #MWL Phase matches 0 run function mwj:system/preparation/role_decision
## Give Items
execute unless score #MWL Phase matches 0 run function mwj:system/preparation/give_item
## Title and Chat Message
execute unless score #MWL Phase matches 0 run function mwj:system/ongame/title_message
## Reset Scoreboard
execute unless score #MWL Phase matches 0 run function mwj:system/ongame/change_to