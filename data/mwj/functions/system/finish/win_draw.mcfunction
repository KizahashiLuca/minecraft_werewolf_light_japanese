###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 04 March 2019
## Version: beta-1.0
###############################

title @a times 20 40 20
title @a title ["",{"text":"DRAW","color":"white","bold":true}]
scoreboard players set Time GAME 0

tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Finished!!","color":"green"},{"text":"\n  両者 ","color":"reset"},{"text":"引き分け","bold":true,"color":"white"},{"text":" です！","color":"reset"}]
