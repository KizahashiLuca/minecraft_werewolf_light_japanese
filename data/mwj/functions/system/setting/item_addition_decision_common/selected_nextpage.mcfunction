###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if score #MWL Phase matches 88 run scoreboard players set #MWL Phase 85
# execute if score #MWL Phase matches 89 run scoreboard players set #MWL Phase 85

execute if score #MWL Phase matches 85 run function mwj:system/setting/item_addition_decision_1/set_added
execute if score #MWL Phase matches 86 run function mwj:system/setting/item_addition_decision_2/set_added
execute if score #MWL Phase matches 87 run function mwj:system/setting/item_addition_decision_3/set_added
execute if score #MWL Phase matches 88 run function mwj:system/setting/item_addition_decision_4/set_added
function mwj:system/setting/item_addition_decision_common/set_inventory