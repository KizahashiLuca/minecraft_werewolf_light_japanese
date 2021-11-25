####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if score #MWL Phase matches 99 run scoreboard players set #MWL Phase 95

## Set inventory
function mwj:system/setting/choose_role/common/set_inventory