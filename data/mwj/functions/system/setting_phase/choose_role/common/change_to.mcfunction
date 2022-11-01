####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change mode
execute if predicate mwj:phase/setting_phase/master run scoreboard players set #MWL Phase 95

## Set Inventory
function mwj:system/setting_phase/choose_role/common/set_inventory

## Set scoreboard
execute if predicate mwj:phase/setting_phase/choose_role/page1 run function mwj:system/setting_phase/choose_role/common/set_page1
execute if predicate mwj:phase/setting_phase/choose_role/page2 run function mwj:system/setting_phase/choose_role/common/set_page2
execute if predicate mwj:phase/setting_phase/choose_role/page3 run function mwj:system/setting_phase/choose_role/common/set_page3
execute if predicate mwj:phase/setting_phase/choose_role/page4 run function mwj:system/setting_phase/choose_role/common/set_page4