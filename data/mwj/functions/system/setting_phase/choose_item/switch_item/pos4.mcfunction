####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos4
execute if predicate mwj:phase/choose_item/page1 run scoreboard players add #MWL ChoosePearl 1
execute if predicate mwj:setting_phase/choose_item/range_error/ender_pearl run scoreboard players set #MWL ChoosePearl 0
execute if predicate mwj:phase/choose_item/page2 run scoreboard players add #MWL ChooseSpeedPot 1
execute if predicate mwj:setting_phase/choose_item/range_error/potion_speed run scoreboard players set #MWL ChooseSpeedPot 0
execute if predicate mwj:phase/choose_item/page3 run scoreboard players add #MWL ChooseHoneyBlock 1
execute if predicate mwj:setting_phase/choose_item/range_error/honey_block run scoreboard players set #MWL ChooseHoneyBlock 0
# execute if predicate mwj:phase/choose_item/page4 run scoreboard players add #MWL Choose 1
# execute if predicate mwj:setting_phase/choose_item/range_error/ run scoreboard players set #MWL Choose 0

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory