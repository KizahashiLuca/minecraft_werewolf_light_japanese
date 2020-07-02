###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set DENOMINATOR (Kind of Items)
scoreboard players set Time DENOMINATOR 0
execute if score Time AddedStick matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedTotem matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedDeath2 matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedPearl matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedHoe matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedElytra matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedSnowball matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedInvis matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedSpeed matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedJump matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedTrident matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedConduit matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedCrossbow matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedHoneyBlock matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedLantern matches 1 run scoreboard players add Time DENOMINATOR 1
## Calculate ones digit
scoreboard players operation Time ONES_DIGIT = Time NUM
scoreboard players remove Time ONES_DIGIT 1
scoreboard players operation Time ONES_DIGIT %= Time DENOMINATOR
## Calculate tens digit
scoreboard players operation Time TENS_DIGIT = Time NUM
scoreboard players remove Time TENS_DIGIT 1
scoreboard players operation Time TENS_DIGIT /= Time DENOMINATOR

## Give Special Items
execute if score Time TENS_DIGIT matches 1.. as @a[team=Player] run function mwj:system/preparation/item/branch/branch_tens_digit
execute if score Time TENS_DIGIT matches 0 run function mwj:system/preparation/item/branch/branch_ones_digit

## Give Common Items
execute as @a[team=Player] run function mwj:system/preparation/item/common/bow
execute as @a[team=Player] run function mwj:system/preparation/item/common/arrow
execute as @a[team=Player] run function mwj:system/preparation/item/common/torch