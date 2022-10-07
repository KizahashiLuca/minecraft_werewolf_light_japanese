####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 100 seconds
scoreboard players operation #MWL HideTime += #MWL Num00100
execute if predicate mwj:system/setting_phase/choose_hide_time/hide_time_more_than_limit run scoreboard players operation #MWL HideTime = #MWL Num00000

## Set inventory
function mwj:system/setting_phase/choose_hide_time/change_to