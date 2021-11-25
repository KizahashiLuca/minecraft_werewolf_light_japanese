####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos2
execute if score #MWL Phase matches 85 run scoreboard players add #MWL ChooseTotem 1
execute if score #MWL Phase matches 85 if score #MWL ChooseTotem matches 2.. run scoreboard players set #MWL ChooseTotem 0
execute if score #MWL Phase matches 86 run scoreboard players add #MWL ChooseSnowball 1
execute if score #MWL Phase matches 86 if score #MWL ChooseSnowball matches 2.. run scoreboard players set #MWL ChooseSnowball 0
execute if score #MWL Phase matches 87 run scoreboard players add #MWL ChooseConduit 1
execute if score #MWL Phase matches 87 if score #MWL ChooseConduit matches 2.. run scoreboard players set #MWL ChooseConduit 0
execute if score #MWL Phase matches 88 run scoreboard players add #MWL ChooseSpyglass 1
execute if score #MWL Phase matches 88 if score #MWL ChooseSpyglass matches 2.. run scoreboard players set #MWL ChooseSpyglass 0

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory