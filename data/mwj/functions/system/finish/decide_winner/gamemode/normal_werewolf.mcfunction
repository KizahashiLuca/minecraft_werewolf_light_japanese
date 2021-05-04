###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Winner is White
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE run function mwj:system/finish/decide_winner/detect_winner/villager

## Winner is Black
execute if score #MWL PURPLE matches 0 if score #MWL BLACK = #MWL WHITE run function mwj:system/finish/decide_winner/detect_winner/werewolf

## Winner is Fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE run function mwj:system/finish/decide_winner/detect_winner/fox

execute if score #MWL PURPLE matches 1.. if score #MWL BLACK = #MWL WHITE run function mwj:system/finish/decide_winner/detect_winner/fox