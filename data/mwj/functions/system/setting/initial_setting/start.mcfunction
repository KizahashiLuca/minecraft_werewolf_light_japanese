####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

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