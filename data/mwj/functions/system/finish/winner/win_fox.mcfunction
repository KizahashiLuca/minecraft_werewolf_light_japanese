###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Title
title @a times 20 40 20
title @a title ["",{"text":"FOX","color":"dark_purple","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"dark_purple","bold":true}]

## Display Winner
function mwj:system/finish/finish_game_title
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"羽衣狐","bold":true,"color":"dark_purple"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 0
scoreboard players set #MWL WINNER 3