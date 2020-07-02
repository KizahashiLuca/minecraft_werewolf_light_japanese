###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Prev Page
scoreboard players remove #MWL Phase 1
execute if score #MWL Phase matches 94 run scoreboard players set #MWL Phase 97

execute if score #MWL Phase matches 95 run function mwj:system/setting/decision_item_addition1/set_added
execute if score #MWL Phase matches 96 run function mwj:system/setting/decision_item_addition2/set_added
execute if score #MWL Phase matches 97 run function mwj:system/setting/decision_item_addition3/set_added
function mwj:system/setting/decision_item_addition_common/set_scoreboard