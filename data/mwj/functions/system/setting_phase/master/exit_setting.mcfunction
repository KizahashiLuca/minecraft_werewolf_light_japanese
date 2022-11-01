####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
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