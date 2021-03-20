###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Give Special Items 
execute if score #MWL TENS_DIGIT matches 1.. run function mwj:system/preparation/item/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score #MWL TENS_DIGIT matches 1.. run scoreboard players remove #MWL TENS_DIGIT 1
scoreboard players operation #MWL ONES_DIGIT = #MWL TempVariable
scoreboard players remove #MWL ONES_DIGIT 1
