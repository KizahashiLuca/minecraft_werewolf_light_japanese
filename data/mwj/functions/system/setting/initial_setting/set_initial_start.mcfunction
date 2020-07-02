###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## decide Host
tag @p[sort=nearest] add Host

## Add Scoreboard
scoreboard objectives add NUM dummy
scoreboard players set Time NUM 0
## Count Players
execute as @a[gamemode=!spectator] run scoreboard players add Time NUM 1

## Detect version
function mwj:system/setting/initial_setting/detect_version/detect_version_main

## Stop the game
execute if score Time NUM matches ..2 run function mwj:system/finish/error_game_player
execute if score Time NUM matches 3.. if score Time Version matches ..13 run function mwj:system/finish/error_game_version

## Start Setting
execute if score Time NUM matches 3.. if score Time Version matches 14.. run function mwj:system/setting/initial_setting/set_initial_main