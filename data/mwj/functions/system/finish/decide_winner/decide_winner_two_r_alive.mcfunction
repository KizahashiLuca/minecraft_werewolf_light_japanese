###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Winner is Nobody
execute if score #MWL Second matches 0 if score #MWL Tick matches 0 run function mwj:system/finish/winner/win_draw
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 0..1 run function mwj:system/finish/winner/win_draw

## Winner is White
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 2.. run function mwj:system/finish/winner/win_white

## Winner is Black
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 1.. if score #MWL WHITE matches 0..1 run function mwj:system/finish/winner/win_black

## Winner is Fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 0 run function mwj:system/finish/winner/win_fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 1.. if score #MWL WHITE matches 0..1 run function mwj:system/finish/winner/win_fox

