###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Title
title @a times 20 40 20
execute if entity @p[scores={CurrentRole=5,DeathCount=0}] run title @a title ["",{"text":"WEREWOLF & MADMAN","color":"red","bold":true}]
execute unless entity @p[scores={CurrentRole=5,DeathCount=0}] run title @a title ["",{"text":"WEREWOLF","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]

## Display Winners
function mwj:system/finish/finish_game_title
execute if entity @p[scores={CurrentRole=5,DeathCount=0}] run tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"人狼＆狂人","bold":true,"color":"red"},{"text":" です！","color":"white"}]
execute unless entity @p[scores={CurrentRole=5,DeathCount=0}] run tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"人狼","bold":true,"color":"red"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 0
scoreboard players set #MWL WINNER 1