###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Clear Inventory
clear @p[tag=host]

## Set Inventory
function mwj:system/setting/choose_mode/choose_mode_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedOkay 0
scoreboard players set @p[tag=host] ChosenTimeLimit 0
scoreboard players set @p[tag=host] ChosenRoleAdd 0
scoreboard players set @p[tag=host] ChosenGameMode 0
scoreboard players set @p[tag=host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 90