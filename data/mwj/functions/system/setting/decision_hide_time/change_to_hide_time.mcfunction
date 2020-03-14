###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=host]

## Set Inventory
function mwj:system/setting/decision_hide_time/hide_time_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] Selected015secs 0
scoreboard players set @p[tag=host] Selected030secs 0
scoreboard players set @p[tag=host] Selected060secs 0
scoreboard players set @p[tag=host] Selected090secs 0
scoreboard players set @p[tag=host] Selected120secs 0
scoreboard players set @p[tag=host] Selected180secs 0
scoreboard players set @p[tag=host] Selected300secs 0
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedOkay 0
scoreboard players set @p[tag=host] SelectedDecide 0
scoreboard players set @p[tag=host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 91