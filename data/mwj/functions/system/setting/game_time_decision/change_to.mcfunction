####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear Inventory
clear @p[tag=Host]

## Set Inventory
function mwj:system/setting/game_time_decision/set_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select05mins 0
scoreboard players set @p[tag=Host] Select10mins 0
scoreboard players set @p[tag=Host] Select15mins 0
scoreboard players set @p[tag=Host] Select20mins 0
scoreboard players set @p[tag=Host] Select25mins 0
scoreboard players set @p[tag=Host] Select30mins 0
scoreboard players set @p[tag=Host] Select60mins 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectDecide 0

## Change Mode
scoreboard players set #MWL Phase 83