###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## decide host
tag @s add host

## Add Scoreboard
scoreboard objectives add NUM dummy
## Count Players
execute as @a run scoreboard players add Time NUM 1

## Stop the game
execute unless score Time NUM matches 3..14 run function mwj:system/finish/break_game

## Start Setting
execute if score Time NUM matches 3..14 run function mwj:system/setting/initial_setting/set_initial_main
