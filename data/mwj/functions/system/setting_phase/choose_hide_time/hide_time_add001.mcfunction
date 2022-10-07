####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 1 second
scoreboard players operation #MWL HideTime += #MWL Num00001
execute if predicate mwj:system/setting_phase/choose_hide_time/hide_time_more_than_limit run scoreboard players operation #MWL HideTime = #MWL Num00000

## Set inventory
function mwj:system/setting_phase/choose_hide_time/change_to