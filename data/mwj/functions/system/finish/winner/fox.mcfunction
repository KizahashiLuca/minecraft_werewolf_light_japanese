###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Title
title @a times 20 40 20
title @a title ["",{"text":"FOX","color":"dark_purple","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"dark_purple","bold":true}]

## Display Winners
function mwj:system/finish/finish_game_title
execute if entity @p[scores={CurrentRole=11}] run tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"羽衣狐＆背徳者","bold":true,"color":"dark_purple"},{"text":" です！","color":"white"}]
execute unless entity @p[scores={CurrentRole=11}] run tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"羽衣狐","bold":true,"color":"dark_purple"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 0
scoreboard players set #MWL WINNER 3