####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate Glow Time
scoreboard players set #MWL TempVariable 60
scoreboard players operation #MWL GlowTime *= #MWL GameTime
scoreboard players operation #MWL GlowTime *= #MWL TempVariable
scoreboard players operation #MWL GlowTime /= #MWL 100

## Clear inventory
clear @a

## Reset scoreboards
function mwj:system/setting/choose_mode/reset_scoreboards

## Hide Time
function mwj:system/hide_phase/change_to