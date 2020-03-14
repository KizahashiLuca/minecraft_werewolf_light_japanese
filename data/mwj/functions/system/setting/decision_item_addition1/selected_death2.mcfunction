###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Set Death2
scoreboard players operation Time TmpAdded = Time AddedDeath2
execute if score Time TmpAdded matches 1 run scoreboard players set Time AddedDeath2 0
execute if score Time TmpAdded matches 0 run scoreboard players set Time AddedDeath2 1
function mwj:system/setting/decision_item_addition1/change_to_item_addition1