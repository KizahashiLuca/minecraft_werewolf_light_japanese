###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Quit the game
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Aborted!!","color":"red"}]
tellraw @a ["",{"text":"  ゲームが中断されました。","color":"reset"}]

## Quit Display
execute if score Time GAME 90 run function mwj:system/finish/exit_game
execute if score Time GAME 91 run function mwj:system/finish/exit_game
execute if score Time GAME 10 run function mwj:system/finish/exit_game
execute if score Time GAME 11 run function mwj:system/finish/end_game