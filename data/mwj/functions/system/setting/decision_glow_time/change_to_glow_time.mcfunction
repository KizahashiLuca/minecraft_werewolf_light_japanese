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
function mwj:system/setting/decision_glow_time/glow_time_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] ThrowItem 0
scoreboard players set @p[tag=host] Selected000pers 0
scoreboard players set @p[tag=host] Selected010pers 0
scoreboard players set @p[tag=host] Selected020pers 0
scoreboard players set @p[tag=host] Selected030pers 0
scoreboard players set @p[tag=host] Selected050pers 0
scoreboard players set @p[tag=host] Selected080pers 0
scoreboard players set @p[tag=host] Selected100pers 0
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedOkay 0
scoreboard players set @p[tag=host] SelectedDecide 0

## Change Mode
scoreboard players set Time GAME 92