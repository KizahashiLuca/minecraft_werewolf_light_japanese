###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players set Time AddedStick 0
scoreboard players set Time AddedTotem 0
scoreboard players set Time AddedDeath2 0
scoreboard players set Time AddedPearl 0
scoreboard players set Time AddedHoe 0
scoreboard players set Time AddedElytra 0
scoreboard players set Time AddedSnowball 0
scoreboard players set Time AddedInvis 0
scoreboard players set Time AddedSpeed 0
scoreboard players set Time AddedJump 0
scoreboard players set Time AddedTrident 0
scoreboard players set Time AddedConduit 0
scoreboard players set Time AddedCrossbow 0
scoreboard players set Time AddedHoneyBlock 0
scoreboard players set Time AddedLantern 0

## Set Item Addition
execute if score Time GAME matches 95 run function mwj:system/setting/decision_item_addition1/set_added
execute if score Time GAME matches 96 run function mwj:system/setting/decision_item_addition2/set_added
execute if score Time GAME matches 97 run function mwj:system/setting/decision_item_addition3/set_added
function mwj:system/setting/decision_item_addition_common/set_scoreboard