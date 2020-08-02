###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Clear Inventory
clear @p[tag=Host]

## Set Inventory
function mwj:system/setting/decision_game_time/game_time_inventory

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