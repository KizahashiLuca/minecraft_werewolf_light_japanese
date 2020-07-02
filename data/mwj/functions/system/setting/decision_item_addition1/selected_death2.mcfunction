###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Death2 - Item3
scoreboard players operation Time TmpAdded = Time AddedItem3
execute if score Time TmpAdded matches 1 run scoreboard players set Time AddedItem3 0
execute if score Time TmpAdded matches 0 run scoreboard players set Time AddedItem3 1
function mwj:system/setting/decision_item_addition_common/set_scoreboard