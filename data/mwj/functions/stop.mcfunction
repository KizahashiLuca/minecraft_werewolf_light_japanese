####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Quit the game
execute if score #MWL Phase matches 0..100 run tellraw @a [""]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.5","color":"red","bold":true}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"  - ","color":"white"},{"text":"Aborted","color":"red","bold":true}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"  ゲームが中断されました。","color":"white"}]

## Quit Display
execute if score #MWL Phase matches 0..10 run function mwj:system/finish/exit_game
execute if score #MWL Phase matches 11 run function mwj:system/finish/end_game
execute if score #MWL Phase matches 80..100 run function mwj:system/finish/exit_game