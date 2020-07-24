###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Quit the game
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"Minecraft Werewolf Light beta-1.6","color":"red","bold":true}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"                    ","color":"white"},{"text":"Aborted","color":"red","bold":true}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if score #MWL Phase matches 0..100 run tellraw @a ["",{"text":"  ゲームが中断されました。","color":"white"}]

## Quit Display
execute if score #MWL Phase matches 0 run function mwj:system/finish/exit_game
execute if score #MWL Phase matches 10 run function mwj:system/finish/exit_game
execute if score #MWL Phase matches 11 run function mwj:system/finish/end_game
execute if score #MWL Phase matches 80..100 run function mwj:system/setting/exit_setting/remove_scoreboard
execute if score #MWL Phase matches 80..100 run function mwj:system/finish/exit_game