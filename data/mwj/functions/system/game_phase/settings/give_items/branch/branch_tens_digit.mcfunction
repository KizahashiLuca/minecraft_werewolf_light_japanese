####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give Special Items 
execute if score #MWL KindsTensDigit matches 1.. run function mwj:system/game_phase/settings/give_items/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score #MWL KindsTensDigit matches 1.. run scoreboard players remove #MWL KindsTensDigit 1
scoreboard players operation #MWL KindsOnesDigit = #MWL KindOfItems
scoreboard players remove #MWL KindsOnesDigit 1
