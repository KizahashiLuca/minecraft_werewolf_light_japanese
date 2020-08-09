###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Title
title @a times 20 40 20
title @a title ["",{"text":"WEREWOLF","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]

## Display Winners
function mwj:system/finish/finish_game_title
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"人狼陣営","bold":true,"color":"red"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 0
scoreboard players set #MWL WINNER 1