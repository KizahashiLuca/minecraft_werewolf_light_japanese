####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 100 percents
scoreboard players operation #MWL GlowTime += #MWL Num00100
execute if predicate mwj:system/setting_phase/choose_glow_time/glow_time_more_than_limit run scoreboard players operation #MWL GlowTime = #MWL Num00000

## Set inventory
function mwj:system/setting_phase/choose_glow_time/change_to