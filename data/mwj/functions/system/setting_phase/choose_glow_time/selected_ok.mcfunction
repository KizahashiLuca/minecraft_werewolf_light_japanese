####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set preview choice
scoreboard players operation #MWL PrevGlowTime = #MWL GlowTime

## Set glow time
function mwj:system/setting_phase/choose_glow_time/selected_set