####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos5
execute if score #MWL Phase matches 85 run scoreboard players add #MWL ChooseHoe 1
execute if score #MWL Phase matches 85 if score #MWL ChooseHoe matches 2.. run scoreboard players set #MWL ChooseHoe 0
execute if score #MWL Phase matches 86 run scoreboard players add #MWL ChooseJumpPot 1
execute if score #MWL Phase matches 86 if score #MWL ChooseJumpPot matches 2.. run scoreboard players set #MWL ChooseJumpPot 0
execute if score #MWL Phase matches 87 run scoreboard players add #MWL ChooseLantern 1
execute if score #MWL Phase matches 87 if score #MWL ChooseLantern matches 2.. run scoreboard players set #MWL ChooseLantern 0
#execute if score #MWL Phase matches 88 run scoreboard players add #MWL Choose 1
#execute if score #MWL Phase matches 88 if score #MWL Choose matches 2.. run scoreboard players set #MWL Choose 0

## Set inventory
function mwj:system/setting/choose_item/common/set_inventory