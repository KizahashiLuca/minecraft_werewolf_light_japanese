###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Error!!","color":"yellow"}]
tellraw @a ["",{"text":"  人数条件をクリアしていません","color":"reset"}]
tellraw @a ["",{"text":"  必要な人数は","color":"reset"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人から","color":"reset"},{"text":" 14 ","bold":true,"color":"red"}]
tellraw @a ["",{"text":"人です。----------------------------------\n","color":"reset"}]

## Quit Game
function mwj:system/finish/quit_game
