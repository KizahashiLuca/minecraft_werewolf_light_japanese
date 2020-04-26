###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Set Jump - Item5
scoreboard players operation Time TmpAdded = Time AddedItem5
execute if score Time TmpAdded matches 1 run scoreboard players set Time AddedItem5 0
execute if score Time TmpAdded matches 0 run scoreboard players set Time AddedItem5 1
function mwj:system/setting/decision_item_addition_common/set_scoreboard