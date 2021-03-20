###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Reset choice
scoreboard players set #MWL AddedStick 0
scoreboard players set #MWL AddedTotem 0
scoreboard players set #MWL AddedDeath 0
scoreboard players set #MWL AddedPearl 0
scoreboard players set #MWL AddedHoe 0

scoreboard players set #MWL AddedElytra 0
scoreboard players set #MWL AddedSnowball 0
scoreboard players set #MWL AddedInvis 0
scoreboard players set #MWL AddedSpeed 0
scoreboard players set #MWL AddedJump 0

scoreboard players set #MWL AddedTrident 0
scoreboard players set #MWL AddedConduit 0
scoreboard players set #MWL AddedCrossbow 0
scoreboard players set #MWL AddedHoneyBlock 0
scoreboard players set #MWL AddedLantern 0

scoreboard players set #MWL AddedVines 0
# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0

## Set Item Addition
execute if score #MWL Phase matches 85 run function mwj:system/setting/item_addition_decision_1/set_added
execute if score #MWL Phase matches 86 run function mwj:system/setting/item_addition_decision_2/set_added
execute if score #MWL Phase matches 87 run function mwj:system/setting/item_addition_decision_3/set_added
execute if score #MWL Phase matches 88 run function mwj:system/setting/item_addition_decision_4/set_added
function mwj:system/setting/item_addition_decision_common/set_inventory