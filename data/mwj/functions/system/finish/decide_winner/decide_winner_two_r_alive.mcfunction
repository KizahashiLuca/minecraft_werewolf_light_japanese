###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Winner is Nobody
execute if score Time SECOND matches 0 if score Time TICK matches 0 run function mwj:system/finish/winner/win_draw
execute if score Time PURPLE matches 0 if score Time BLACK matches 0 if score Time WHITE matches 0..1 run function mwj:system/finish/winner/win_draw

## Winner is White
execute if score Time PURPLE matches 0 if score Time BLACK matches 0 if score Time WHITE matches 2.. run function mwj:system/finish/winner/win_white

## Winner is Black
execute if score Time PURPLE matches 0 if score Time BLACK matches 1.. if score Time WHITE matches 0..1 run function mwj:system/finish/winner/win_black

## Winner is Fox
execute if score Time PURPLE matches 1.. if score Time BLACK matches 0 run function mwj:system/finish/winner/win_fox
execute if score Time PURPLE matches 1.. if score Time BLACK matches 1.. if score Time WHITE matches 0..1 run function mwj:system/finish/winner/win_fox

