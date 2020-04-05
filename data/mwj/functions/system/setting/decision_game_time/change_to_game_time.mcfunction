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
function mwj:system/setting/decision_game_time/game_time_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Selected05mins 0
scoreboard players set @p[tag=Host] Selected10mins 0
scoreboard players set @p[tag=Host] Selected15mins 0
scoreboard players set @p[tag=Host] Selected20mins 0
scoreboard players set @p[tag=Host] Selected25mins 0
scoreboard players set @p[tag=Host] Selected30mins 0
scoreboard players set @p[tag=Host] Selected60mins 0
scoreboard players set @p[tag=Host] SelectedCancel 0
scoreboard players set @p[tag=Host] SelectedOkay 0
scoreboard players set @p[tag=Host] SelectedDecide 0

## Change Mode
scoreboard players set Time GAME 93