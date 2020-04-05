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
function mwj:system/setting/decision_game_mode/game_mode_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectedWof 0
scoreboard players set @p[tag=Host] SelectedTwo 0
scoreboard players set @p[tag=Host] SelectedExt 0
scoreboard players set @p[tag=Host] SelectedCancel 0
scoreboard players set @p[tag=Host] SelectedOkay 0
scoreboard players set @p[tag=Host] SelectedDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 94