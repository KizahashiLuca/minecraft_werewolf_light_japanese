###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Set Honey block - Item4
scoreboard players operation #MWL TmpAdded = #MWL AddedItem4
execute if score #MWL TmpAdded matches 1 run scoreboard players set #MWL AddedItem4 0
execute if score #MWL TmpAdded matches 0 run scoreboard players set #MWL AddedItem4 1
function mwj:system/setting/item_addition_decision_common/set_inventory