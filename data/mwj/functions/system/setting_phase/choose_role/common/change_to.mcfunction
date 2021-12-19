####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change mode
execute if predicate mwj:phase/choose_mode run scoreboard players set #MWL Phase 95

## Set Inventory
function mwj:system/setting_phase/choose_role/common/set_inventory

## Set scoreboard
execute if predicate mwj:phase/choose_role/page1 run function mwj:system/setting_phase/choose_role/common/set_page1
execute if predicate mwj:phase/choose_role/page2 run function mwj:system/setting_phase/choose_role/common/set_page2
execute if predicate mwj:phase/choose_role/page3 run function mwj:system/setting_phase/choose_role/common/set_page3
execute if predicate mwj:phase/choose_role/page4 run function mwj:system/setting_phase/choose_role/common/set_page4