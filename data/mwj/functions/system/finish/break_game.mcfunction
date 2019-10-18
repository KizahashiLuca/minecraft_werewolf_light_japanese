###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Error!!","color":"yellow"}]
tellraw @a ["",{"text":"  人数条件をクリアしていません","color":"reset"}]
tellraw @a ["",{"text":"  必要な人数は","color":"reset"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人から","color":"reset"},{"text":" 50 ","bold":true,"color":"red"},{"text":"人です。","color":"reset"}]

## Quit Game
function mwj:system/finish/exit_game
