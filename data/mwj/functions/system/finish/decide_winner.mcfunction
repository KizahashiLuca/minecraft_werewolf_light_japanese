###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Winner is Nobody
execute if score Time Limit matches 0 run function mwj:system/finish/win_draw
execute if score Time BLACK matches 0 if score Time WHITE matches 0..1 run function mwj:system/finish/win_draw

## Winner is White
execute if score Time BLACK matches 0 unless score Time WHITE matches 0..1 run function mwj:system/finish/win_white

## Winner is Black
execute unless score Time BLACK matches 0 if score Time WHITE matches 0..1 run function mwj:system/finish/win_black