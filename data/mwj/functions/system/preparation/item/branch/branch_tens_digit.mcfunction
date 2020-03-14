###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Give Special Items 
execute if score Time TENS_DIGIT matches 1.. run function mwj:system/preparation/item/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score Time TENS_DIGIT matches 1.. run scoreboard players remove Time TENS_DIGIT 1
scoreboard players operation Time ONES_DIGIT = Time DENOMINATOR
scoreboard players remove Time ONES_DIGIT 1
