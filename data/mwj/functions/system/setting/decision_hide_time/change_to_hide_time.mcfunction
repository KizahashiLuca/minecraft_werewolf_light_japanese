###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=Host]

## Set Inventory
function mwj:system/setting/decision_hide_time/hide_time_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] Select015secs 0
scoreboard players set @p[tag=Host] Select030secs 0
scoreboard players set @p[tag=Host] Select060secs 0
scoreboard players set @p[tag=Host] Select090secs 0
scoreboard players set @p[tag=Host] Select120secs 0
scoreboard players set @p[tag=Host] Select180secs 0
scoreboard players set @p[tag=Host] Select300secs 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 91