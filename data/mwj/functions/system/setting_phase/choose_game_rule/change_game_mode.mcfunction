####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change game mode
scoreboard players add #MWL GameMode 1
execute if predicate mwj:system/setting_phase/choose_game_rule/game_mode_more_than_limit run scoreboard players set #MWL GameMode 1

## Set inventory
function mwj:system/setting_phase/choose_game_rule/change_to