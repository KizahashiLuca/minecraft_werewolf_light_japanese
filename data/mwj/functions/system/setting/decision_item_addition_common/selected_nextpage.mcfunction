###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if score #MWL Phase matches 88 run scoreboard players set #MWL Phase 85
# execute if score #MWL Phase matches 89 run scoreboard players set #MWL Phase 85

execute if score #MWL Phase matches 85 run function mwj:system/setting/decision_item_addition1/set_added
execute if score #MWL Phase matches 86 run function mwj:system/setting/decision_item_addition2/set_added
execute if score #MWL Phase matches 87 run function mwj:system/setting/decision_item_addition3/set_added
execute if score #MWL Phase matches 88 run function mwj:system/setting/decision_item_addition4/set_added
function mwj:system/setting/decision_item_addition_common/set_scoreboard