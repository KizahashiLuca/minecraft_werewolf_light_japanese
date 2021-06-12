####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give Special Items 
execute if score #MWL TENS_DIGIT matches 1.. run function mwj:system/ongame/settings/give_items/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score #MWL TENS_DIGIT matches 1.. run scoreboard players remove #MWL TENS_DIGIT 1
scoreboard players operation #MWL ONES_DIGIT = #MWL TempVariable
scoreboard players remove #MWL ONES_DIGIT 1
