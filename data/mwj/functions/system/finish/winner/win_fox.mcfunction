###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Title
title @a times 20 40 20
title @a title ["",{"text":"FOX","color":"dark_purple","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"dark_purple","bold":true}]

## Display Winner
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Finished!!","color":"green"}]
tellraw @a ["",{"text":"  勝者は ","color":"reset"},{"text":"羽衣狐","bold":true,"color":"dark_purple"},{"text":" です！","color":"reset"}]

## Change Game Mode
scoreboard players set Time GAME 0
