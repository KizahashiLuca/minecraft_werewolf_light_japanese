####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 10 seconds
scoreboard players add #MWL HideTime 10
execute if score #MWL HideTime matches 1000.. run scoreboard players remove #MWL HideTime 1000

## Set inventory
function mwj:system/setting/choose_hide_time/set_inventory