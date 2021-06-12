####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.5","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Minecraft version 1.","color":"green","bold":true},{"score":{"name":"#MWL","objective":"Version"},"color":"green","bold":true}]
tellraw @a ["",{"text":" ","color":"white"},{"text":"Error","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  前提バージョンが異なります。","color":"white"}]
tellraw @a ["",{"text":"  このデータパックの対象は以下。","color":"white"}]
tellraw @a ["",{"text":"     1.16 ","bold":true,"color":"red"},{"text":"～","color":"white"},{"text":" 1.17 ","bold":true,"color":"red"}]

## Quit Game
function mwj:system/finish/exit_game
