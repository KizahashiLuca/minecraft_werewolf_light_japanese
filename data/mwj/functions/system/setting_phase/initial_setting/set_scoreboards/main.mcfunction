####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset Players
scoreboard players reset @a
scoreboard players reset #MWL

## Game settings
function mwj:system/setting_phase/initial_setting/set_scoreboards/game_settings
## Setting phase
function mwj:system/setting_phase/initial_setting/set_scoreboards/setting_phase
## Setting game phase
function mwj:system/setting_phase/initial_setting/set_scoreboards/setting_game_phase
## Game phase
function mwj:system/setting_phase/initial_setting/set_scoreboards/game_phase