###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.1","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Minecraft version 1.","color":"green","bold":true},{"score":{"name":"#MWL","objective":"Version"},"color":"green","bold":true}]
tellraw @a ["",{"text":" ","color":"white"},{"text":"Error","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  人数条件をクリアしていません。","color":"white"}]
tellraw @a ["",{"text":"  必要な人数は","color":"white"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人からです。","color":"white"}]

## Quit Game
function mwj:system/finish/exit_game
