###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Decide winner
execute if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run function mwj:system/finish/decide_winner/gamemode/main

## Times up
execute if score #MWL Second matches 0 if score #MWL Tick matches 0 run function mwj:system/finish/decide_winner/schedule/draw