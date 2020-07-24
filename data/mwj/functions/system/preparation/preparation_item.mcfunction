###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Set TempVariable (Kind of Items)
scoreboard players set #MWL TempVariable 0
execute if score #MWL AddedStick matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedTotem matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedDeath matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedPearl matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedHoe matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedElytra matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedSnowball matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedInvis matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedSpeed matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedJump matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedTrident matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedConduit matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedCrossbow matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedHoneyBlock matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL AddedLantern matches 1 run scoreboard players add #MWL TempVariable 1
## Calculate ones digit
scoreboard players operation #MWL ONES_DIGIT = #MWL NUM
scoreboard players remove #MWL ONES_DIGIT 1
scoreboard players operation #MWL ONES_DIGIT %= #MWL TempVariable
## Calculate tens digit
scoreboard players operation #MWL TENS_DIGIT = #MWL NUM
scoreboard players remove #MWL TENS_DIGIT 1
scoreboard players operation #MWL TENS_DIGIT /= #MWL TempVariable

## Give Special Items
execute if score #MWL TENS_DIGIT matches 1.. as @a[team=Player] run function mwj:system/preparation/item/branch/branch_tens_digit
execute if score #MWL TENS_DIGIT matches 0 run function mwj:system/preparation/item/branch/branch_ones_digit

## Give Common Items
execute as @a[team=Player] run function mwj:system/preparation/item/common/bow
execute as @a[team=Player] run function mwj:system/preparation/item/common/arrow
execute as @a[team=Player] run function mwj:system/preparation/item/common/torch