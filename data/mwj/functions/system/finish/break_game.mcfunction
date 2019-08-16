###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Error!!\n","color":"yellow"},{"text":"  人数条件をクリアしていません\n  必要な人数は","color":"reset"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人から","color":"reset"},{"text":" 14 ","bold":true,"color":"red"},{"text":"人です。\n----------------------------------\n","color":"reset"}]

## Quit Game
function mwj:system/finish/quit_game
