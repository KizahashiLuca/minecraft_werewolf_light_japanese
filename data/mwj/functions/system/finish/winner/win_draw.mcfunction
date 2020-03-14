###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Title
title @a times 20 40 20
title @a title ["",{"text":"DRAW","color":"white","bold":true}]

## Display Winner
function mwj:system/finish/finish_game_title
tellraw @a ["",{"text":"  両者 ","color":"white"},{"text":"引き分け","bold":true,"color":"white"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set Time GAME 0
