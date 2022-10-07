####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if predicate mwj:phase/setting_phase/choose_item/page5 run scoreboard players set #MWL Phase 85

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory