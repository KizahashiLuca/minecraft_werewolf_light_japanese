####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos2
execute if predicate mwj:phase/setting_phase/choose_item/page1 run scoreboard players add #MWL ChooseTotem 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/totem_of_undying run scoreboard players set #MWL ChooseTotem 0
execute if predicate mwj:phase/setting_phase/choose_item/page2 run scoreboard players add #MWL ChooseSnowball 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/snowball run scoreboard players set #MWL ChooseSnowball 0
execute if predicate mwj:phase/setting_phase/choose_item/page3 run scoreboard players add #MWL ChooseConduit 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/conduit run scoreboard players set #MWL ChooseConduit 0
execute if predicate mwj:phase/setting_phase/choose_item/page4 run scoreboard players add #MWL ChooseSpyglass 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/spyglass run scoreboard players set #MWL ChooseSpyglass 0

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory