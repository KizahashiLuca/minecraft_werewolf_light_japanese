###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set DENOMINATOR
scoreboard players set Time DENOMINATOR 10
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