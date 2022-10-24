####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set preview choice
scoreboard players operation #MWL PrevGlowTime = #MWL GlowTime

## Set glow time
function mwj:system/setting_phase/choose_glow_time/selected_set