###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Winner is Nobody
execute if score #MWL Second matches 0 if score #MWL Tick matches 0 run function mwj:system/finish/winner/win_draw
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 0 run function mwj:system/finish/winner/win_draw

## Winner is White
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE run function mwj:system/finish/winner/win_white

## Winner is Black
execute if score #MWL PURPLE matches 0 if score #MWL BLACK = #MWL WHITE run function mwj:system/finish/winner/win_black

## Winner is Fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE run function mwj:system/finish/winner/win_fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK = #MWL WHITE run function mwj:system/finish/winner/win_fox