####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate glow time
scoreboard players operation #MWL GlowTime *= #MWL GameTime
scoreboard players operation #MWL GlowTime *= #MWL Num00060
scoreboard players operation #MWL GlowTime /= #MWL Num00100

## Clear inventory
clear @a

## Change to hide phase
function mwj:system/hide_phase/change_to