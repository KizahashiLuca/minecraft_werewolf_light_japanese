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
function mwj:system/setting/choose_mode/choose_mode_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] ThrowItem 0
scoreboard players set @p[tag=host] ChosenHideTime 0
scoreboard players set @p[tag=host] ChosenGlowTime 0
scoreboard players set @p[tag=host] ChosenGameTime 0
scoreboard players set @p[tag=host] ChosenGameMode 0
scoreboard players set @p[tag=host] ChosenItemAdd 0
scoreboard players set @p[tag=host] ChosenRoleAdd 0
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedOkay 0

## Change Mode
scoreboard players set Time GAME 90