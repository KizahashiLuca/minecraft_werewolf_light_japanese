###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

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