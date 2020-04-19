###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## decide Host
tag @p[sort=nearest] add Host

## Add Scoreboard
scoreboard objectives add NUM dummy
scoreboard players set Time NUM 0
## Count Players
execute as @a[gamemode=!spectator] run scoreboard players add Time NUM 1
scoreboard players set Time NUM 11

## Stop the game
execute if score Time NUM matches ..2 run function mwj:system/finish/break_game

## Start Setting
execute if score Time NUM matches 3.. run function mwj:system/setting/initial_setting/set_initial_main