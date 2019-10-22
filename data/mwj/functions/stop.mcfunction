###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Quit the game
execute if score Time GAME matches 0..100 run tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
execute if score Time GAME matches 0..100 run tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Aborted!!","color":"red"}]
execute if score Time GAME matches 0..100 run tellraw @a ["",{"text":"  ゲームが中断されました。","color":"reset"}]

## Quit Display
execute if score Time GAME matches 0 run function mwj:system/finish/exit_game
execute if score Time GAME matches 10 run function mwj:system/finish/exit_game
execute if score Time GAME matches 11 run function mwj:system/finish/end_game
execute if score Time GAME matches 90..100 run function mwj:system/setting/exit_setting/remove_scoreboard
execute if score Time GAME matches 90..100 run function mwj:system/finish/exit_game