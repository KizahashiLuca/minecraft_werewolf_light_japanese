####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos3
execute if predicate mwj:phase/setting_phase/choose_item/page1 run scoreboard players add #MWL ChooseDeathPot 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/potion_death run scoreboard players set #MWL ChooseDeathPot 0
execute if predicate mwj:phase/setting_phase/choose_item/page2 run scoreboard players add #MWL ChooseInvisPot 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/potion_invisible run scoreboard players set #MWL ChooseInvisPot 0
execute if predicate mwj:phase/setting_phase/choose_item/page3 run scoreboard players add #MWL ChooseCrossbow 1
execute if predicate mwj:system/setting_phase/choose_item/range_error/crossbow run scoreboard players set #MWL ChooseCrossbow 0
# execute if predicate mwj:phase/setting_phase/choose_item/page4 run scoreboard players add #MWL Choose 1
# execute if predicate mwj:system/setting_phase/choose_item/range_error/ run scoreboard players set #MWL Choose 0

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory