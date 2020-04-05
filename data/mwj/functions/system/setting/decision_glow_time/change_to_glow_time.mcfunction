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
scoreboard players set @p[tag=Host] Selected000pers 0
scoreboard players set @p[tag=Host] Selected010pers 0
scoreboard players set @p[tag=Host] Selected020pers 0
scoreboard players set @p[tag=Host] Selected030pers 0
scoreboard players set @p[tag=Host] Selected050pers 0
scoreboard players set @p[tag=Host] Selected080pers 0
scoreboard players set @p[tag=Host] Selected100pers 0
scoreboard players set @p[tag=Host] SelectedCancel 0
scoreboard players set @p[tag=Host] SelectedOkay 0
scoreboard players set @p[tag=Host] SelectedDecide 0

## Change Mode
scoreboard players set Time GAME 92