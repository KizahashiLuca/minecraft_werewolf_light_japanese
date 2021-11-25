####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos1
execute if score #MWL Phase matches 85 run scoreboard players add #MWL ChooseStick 1
execute if score #MWL Phase matches 85 if score #MWL ChooseStick matches 2.. run scoreboard players set #MWL ChooseStick 0
execute if score #MWL Phase matches 86 run scoreboard players add #MWL ChooseElytra 1
execute if score #MWL Phase matches 86 if score #MWL ChooseElytra matches 2.. run scoreboard players set #MWL ChooseElytra 0
execute if score #MWL Phase matches 87 run scoreboard players add #MWL ChooseTrident 1
execute if score #MWL Phase matches 87 if score #MWL ChooseTrident matches 2.. run scoreboard players set #MWL ChooseTrident 0
execute if score #MWL Phase matches 88 run scoreboard players add #MWL ChooseVines 1
execute if score #MWL Phase matches 88 if score #MWL ChooseVines matches 2.. run scoreboard players set #MWL ChooseVines 0

## Set inventory
function mwj:system/setting/choose_item/common/set_inventory