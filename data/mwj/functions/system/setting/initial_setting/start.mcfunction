###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## decide Host
tag @p[sort=nearest] add Host

## Add Scoreboard
scoreboard objectives add NumOfPlayers dummy
scoreboard players set #MWL NumOfPlayers 0
## Count Players
execute as @a[gamemode=!spectator] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NumOfPlayers 15


## Detect version
function mwj:system/setting/initial_setting/detect_version/main

## Stop the game
execute if score #MWL NumOfPlayers matches ..2 run function mwj:system/finish/error_game_player
execute if score #MWL NumOfPlayers matches 3.. if score #MWL Version matches ..13 run function mwj:system/finish/error_game_version

## Start Setting
execute if score #MWL NumOfPlayers matches 3.. if score #MWL Version matches 14.. run function mwj:system/setting/initial_setting/main