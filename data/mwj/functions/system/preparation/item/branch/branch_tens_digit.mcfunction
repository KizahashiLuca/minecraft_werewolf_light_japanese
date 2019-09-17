###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Give Special Items 
execute if score Time TENS_DIGIT matches 1.. run function mwj:system/preparation/item/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score Time TENS_DIGIT matches 1.. run scoreboard players remove Time TENS_DIGIT 1
scoreboard players set Time ONES_DIGIT 9
