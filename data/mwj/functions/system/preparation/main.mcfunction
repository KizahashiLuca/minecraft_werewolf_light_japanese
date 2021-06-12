####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Process the timer system
function mwj:system/common/time/tick

## Remove Entity
function mwj:system/preparation/set_entities

## Prepare Initially
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/ongame/change_to