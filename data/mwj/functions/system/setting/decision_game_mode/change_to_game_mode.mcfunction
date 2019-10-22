###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Clear Inventory
clear @p[tag=host]

## Set Inventory
function mwj:system/setting/decision_game_mode/game_mode_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] SelectedWof 0
scoreboard players set @p[tag=host] SelectedTwo 0
scoreboard players set @p[tag=host] SelectedExt 0
scoreboard players set @p[tag=host] SelectedBarrier 0
scoreboard players set @p[tag=host] SelectedWire 0
scoreboard players set @p[tag=host] SelectedStar 0
scoreboard players set @p[tag=host] ThrowWof 0
scoreboard players set @p[tag=host] ThrowTwo 0
scoreboard players set @p[tag=host] ThrowExt 0
scoreboard players set @p[tag=host] ThrowBarrier 0
scoreboard players set @p[tag=host] ThrowWireHook 0
scoreboard players set @p[tag=host] ThrowNetherStar 0

## Change Mode
scoreboard players set Time GAME 93