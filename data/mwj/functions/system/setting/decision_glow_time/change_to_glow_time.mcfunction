###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=Host]

## Set Inventory
function mwj:system/setting/decision_glow_time/glow_time_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select000pers 0
scoreboard players set @p[tag=Host] Select010pers 0
scoreboard players set @p[tag=Host] Select020pers 0
scoreboard players set @p[tag=Host] Select030pers 0
scoreboard players set @p[tag=Host] Select050pers 0
scoreboard players set @p[tag=Host] Select080pers 0
scoreboard players set @p[tag=Host] Select100pers 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectDecide 0

## Change Mode
scoreboard players set Time GAME 92