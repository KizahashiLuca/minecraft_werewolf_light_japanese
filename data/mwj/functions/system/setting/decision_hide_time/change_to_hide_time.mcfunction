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
function mwj:system/setting/decision_hide_time/hide_time_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] Selected015secs 0
scoreboard players set @p[tag=Host] Selected030secs 0
scoreboard players set @p[tag=Host] Selected060secs 0
scoreboard players set @p[tag=Host] Selected090secs 0
scoreboard players set @p[tag=Host] Selected120secs 0
scoreboard players set @p[tag=Host] Selected180secs 0
scoreboard players set @p[tag=Host] Selected300secs 0
scoreboard players set @p[tag=Host] SelectedCancel 0
scoreboard players set @p[tag=Host] SelectedOkay 0
scoreboard players set @p[tag=Host] SelectedDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 91