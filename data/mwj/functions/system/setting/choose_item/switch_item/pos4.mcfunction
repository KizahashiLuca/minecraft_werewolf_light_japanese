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
execute if score #MWL Phase matches 85 run scoreboard players add #MWL ChoosePearl 1
execute if score #MWL Phase matches 85 if score #MWL ChoosePearl matches 2.. run scoreboard players set #MWL ChoosePearl 0
execute if score #MWL Phase matches 86 run scoreboard players add #MWL ChooseSpeedPot 1
execute if score #MWL Phase matches 86 if score #MWL ChooseSpeedPot matches 2.. run scoreboard players set #MWL ChooseSpeedPot 0
execute if score #MWL Phase matches 87 run scoreboard players add #MWL ChooseHoneyBlock 1
execute if score #MWL Phase matches 87 if score #MWL ChooseHoneyBlock matches 2.. run scoreboard players set #MWL ChooseHoneyBlock 0
#execute if score #MWL Phase matches 88 run scoreboard players add #MWL Choose 1
#execute if score #MWL Phase matches 88 if score #MWL Choose matches 2.. run scoreboard players set #MWL Choose 0

## Set inventory
function mwj:system/setting/choose_item/common/set_inventory