###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Set Pearl - Item4
scoreboard players operation #MWL TmpAdded = #MWL AddedItem4
execute if score #MWL TmpAdded matches 1 run scoreboard players set #MWL AddedItem4 0
execute if score #MWL TmpAdded matches 0 run scoreboard players set #MWL AddedItem4 1
function mwj:system/setting/decision_item_addition_common/set_scoreboard