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
execute if score #MWL Phase matches 80 run scoreboard players set #MWL Phase 85

## Set Inventory
function mwj:system/setting_phase/choose_item/common/set_inventory

## Set scoreboard
execute if score #MWL Phase matches 85 run function mwj:system/setting_phase/choose_item/common/set_page1
execute if score #MWL Phase matches 86 run function mwj:system/setting_phase/choose_item/common/set_page2
execute if score #MWL Phase matches 87 run function mwj:system/setting_phase/choose_item/common/set_page3
execute if score #MWL Phase matches 88 run function mwj:system/setting_phase/choose_item/common/set_page4