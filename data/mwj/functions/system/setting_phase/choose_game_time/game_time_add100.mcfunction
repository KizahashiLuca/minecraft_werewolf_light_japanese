####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 100 minutes
scoreboard players operation #MWL GameTime += #MWL Num00100
execute if predicate mwj:system/setting_phase/choose_game_time/game_time_more_than_limit run scoreboard players operation #MWL GameTime = #MWL Num00000

## Set inventory
function mwj:system/setting_phase/choose_game_time/change_to