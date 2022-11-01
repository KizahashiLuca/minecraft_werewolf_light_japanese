####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos5
execute if predicate mwj:phase/setting_phase/choose_item/page1 run scoreboard players add #MWL ChooseHoe 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/diamond_hoe run scoreboard players set #MWL ChooseHoe 0
execute if predicate mwj:phase/setting_phase/choose_item/page2 run scoreboard players add #MWL ChooseJumpPot 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/potion_jump run scoreboard players set #MWL ChooseJumpPot 0
execute if predicate mwj:phase/setting_phase/choose_item/page3 run scoreboard players add #MWL ChooseLantern 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/lantern run scoreboard players set #MWL ChooseLantern 0
# execute if predicate mwj:phase/setting_phase/choose_item/page4 run scoreboard players add #MWL Choose 1
# execute if predicate mwj:system/setting_phase/choose_item/range_error/ run scoreboard players set #MWL Choose 0

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory