####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## decide Host
tag @p[sort=nearest] add Host

## Count players
scoreboard objectives add NumOfPlayers dummy
function mwj:system/common/count_players

## Detect version
function mwj:system/setting_phase/initial_setting/detect_version/main

## Stop the game
execute if score #MWL NumOfPlayers matches ..2 run function mwj:system/finish/error_game_player
execute if score #MWL NumOfPlayers matches 3.. if score #MWL Version matches ..15 run function mwj:system/finish/error_game_version
execute if score #MWL NumOfPlayers matches 3.. if score #MWL Version matches 18.. run function mwj:system/finish/error_game_version

## Start Setting
execute if score #MWL NumOfPlayers matches 3.. if score #MWL Version matches 16..17 run function mwj:system/setting_phase/initial_setting/main