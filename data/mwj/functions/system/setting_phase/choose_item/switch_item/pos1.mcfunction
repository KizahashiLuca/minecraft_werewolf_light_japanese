####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos1
execute if predicate mwj:phase/setting_phase/choose_item/page1 run scoreboard players add #MWL ChooseStick 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/stick run scoreboard players set #MWL ChooseStick 0
execute if predicate mwj:phase/setting_phase/choose_item/page2 run scoreboard players add #MWL ChooseElytra 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/elytra run scoreboard players set #MWL ChooseElytra 0
execute if predicate mwj:phase/setting_phase/choose_item/page3 run scoreboard players add #MWL ChooseTrident 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/trident run scoreboard players set #MWL ChooseTrident 0
execute if predicate mwj:phase/setting_phase/choose_item/page4 run scoreboard players add #MWL ChooseVines 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/twisting_vines run scoreboard players set #MWL ChooseVines 0

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory