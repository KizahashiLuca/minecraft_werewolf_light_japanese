####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Prev choice
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole
function mwj:system/common/roles/set_prev_roles

## Set inventory
function mwj:system/setting/casting_decision/common/selected_set