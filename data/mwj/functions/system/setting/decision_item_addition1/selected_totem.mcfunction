###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Totem
scoreboard players operation Time TmpAdded = Time AddedTotem
execute if score Time TmpAdded matches 1 run scoreboard players set Time AddedTotem 0
execute if score Time TmpAdded matches 0 run scoreboard players set Time AddedTotem 1
function mwj:system/setting/decision_item_addition1/change_to_item_addition1