####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Conduit - Item2
scoreboard players operation #MWL TmpAdded = #MWL AddedItem2
execute if score #MWL TmpAdded matches 1 run scoreboard players set #MWL AddedItem2 0
execute if score #MWL TmpAdded matches 0 run scoreboard players set #MWL AddedItem2 1
function mwj:system/setting/item_addition_decision/common/set_inventory