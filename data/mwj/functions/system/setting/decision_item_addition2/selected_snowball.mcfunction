###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Snowball
scoreboard players operation Time TmpAdded = Time AddedSnowball
execute if score Time TmpAdded matches 1 run scoreboard players set Time AddedSnowball 0
execute if score Time TmpAdded matches 0 run scoreboard players set Time AddedSnowball 1
function mwj:system/setting/decision_item_addition2/change_to_item_addition2