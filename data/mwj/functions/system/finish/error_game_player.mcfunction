###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light beta-1.6","color":"red","bold":true}]
tellraw @a ["",{"text":"                     ","color":"white"},{"text":"Error","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  人数条件をクリアしていません。","color":"white"}]
tellraw @a ["",{"text":"  必要な人数は","color":"white"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人からです。","color":"white"}]

## Quit Game
function mwj:system/finish/exit_game
