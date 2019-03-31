###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 31 March 2019
## Version: beta-1.2
###############################

title @a times 20 40 20
execute if entity @p[scores={ROLE=2,DEATH=0}] run title @a title ["",{"text":"WEREWOLF & MADMAN","color":"red","bold":true}]
execute unless entity @p[scores={ROLE=2,DEATH=0}] run title @a title ["",{"text":"WEREWOLF","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]
scoreboard players set Time GAME 0

execute if entity @p[scores={ROLE=2,DEATH=0}] run tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Finished!!","color":"green"},{"text":"\n  勝者は ","color":"reset"},{"text":"人狼＆狂人","bold":true,"color":"red"},{"text":" です！","color":"reset"}]
execute unless entity @p[scores={ROLE=2,DEATH=0}] run tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Finished!!","color":"green"},{"text":"\n  勝者は ","color":"reset"},{"text":"人狼","bold":true,"color":"red"},{"text":" です！","color":"reset"}]
