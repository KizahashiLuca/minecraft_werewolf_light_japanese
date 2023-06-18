####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Prev Page
scoreboard players remove #MWL Phase 1
execute if predicate mwj:phase/setting_phase/choose_item/page0 run scoreboard players set #MWL Phase 88

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory