###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Set Hoe - Item5
scoreboard players operation #MWL TmpAdded = #MWL AddedItem5
execute if score #MWL TmpAdded matches 1 run scoreboard players set #MWL AddedItem5 0
execute if score #MWL TmpAdded matches 0 run scoreboard players set #MWL AddedItem5 1
function mwj:system/setting/item_addition_decision_common/set_inventory