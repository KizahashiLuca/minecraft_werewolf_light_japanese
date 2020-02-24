###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Set Crossbow
scoreboard players operation Time TmpAdded = Time AddedCrossbow
execute if score Time TmpAdded matches 1 run scoreboard players set Time AddedCrossbow 0
execute if score Time TmpAdded matches 0 run scoreboard players set Time AddedCrossbow 1
function mwj:system/setting/decision_item_addition2/change_to_item_addition2