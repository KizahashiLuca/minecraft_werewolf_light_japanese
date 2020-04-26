###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players set Time AddedStick 1
scoreboard players set Time AddedTotem 1
scoreboard players set Time AddedDeath2 1
scoreboard players set Time AddedPearl 1
scoreboard players set Time AddedHoe 1
scoreboard players set Time AddedCrossbow 1
scoreboard players set Time AddedSnowball 1
scoreboard players set Time AddedInvis 1
scoreboard players set Time AddedSpeed 1
scoreboard players set Time AddedJump 1
scoreboard players set Time AddedElytra 1
scoreboard players set Time AddedConduit 1

## Set Item Addition
execute if score Time GAME matches 95 run function mwj:system/setting/decision_item_addition1/set_added
execute if score Time GAME matches 96 run function mwj:system/setting/decision_item_addition2/set_added
execute if score Time GAME matches 97 run function mwj:system/setting/decision_item_addition3/set_added
function mwj:system/setting/decision_item_addition_common/set_scoreboard