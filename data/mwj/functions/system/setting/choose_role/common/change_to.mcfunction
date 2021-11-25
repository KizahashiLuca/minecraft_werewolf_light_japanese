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
execute if score #MWL Phase matches 80 run scoreboard players set #MWL Phase 95

## Set Inventory
function mwj:system/setting/choose_role/common/set_inventory

## Set scoreboard
execute if score #MWL Phase matches 95 run function mwj:system/setting/choose_role/common/set_page1
execute if score #MWL Phase matches 96 run function mwj:system/setting/choose_role/common/set_page2
execute if score #MWL Phase matches 97 run function mwj:system/setting/choose_role/common/set_page3
execute if score #MWL Phase matches 98 run function mwj:system/setting/choose_role/common/set_page4