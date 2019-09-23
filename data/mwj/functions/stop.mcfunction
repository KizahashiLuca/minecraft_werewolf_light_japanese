###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Quit the game
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Aborted!!","color":"red"}]
tellraw @a ["",{"text":"  ゲームが中断されました。","color":"reset"}]

## Quit Display
execute if score Time GAME matches 90..92 run function mwj:system/setting/remove_scoreboard
execute if score Time GAME matches 90..92 run function mwj:system/finish/exit_game
execute if score Time GAME matches 10 run function mwj:system/finish/exit_game
execute if score Time GAME matches 11 run function mwj:system/finish/end_game