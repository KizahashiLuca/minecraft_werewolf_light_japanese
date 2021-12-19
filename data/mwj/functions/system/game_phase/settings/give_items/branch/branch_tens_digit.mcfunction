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
execute if score #MWL KindsTensDigit matches 1.. run function mwj:system/game_phase/settings/give_items/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score #MWL KindsTensDigit matches 1.. run scoreboard players remove #MWL KindsTensDigit 1
scoreboard players operation #MWL KindsOnesDigit = #MWL KindOfItems
scoreboard players remove #MWL KindsOnesDigit 1
