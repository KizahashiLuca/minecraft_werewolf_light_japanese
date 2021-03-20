###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.5","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Minecraft version 1.","color":"green","bold":true},{"score":{"name":"#MWL","objective":"Version"},"color":"green","bold":true}]
tellraw @a ["",{"text":" ","color":"white"},{"text":"Error","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  前提バージョンが異なります。","color":"white"}]
tellraw @a ["",{"text":"  このデータパックは","color":"white"},{"text":" 1.14 ","bold":true,"color":"red"},{"text":"から使えます。","color":"white"}]

## Quit Game
function mwj:system/finish/exit_game
