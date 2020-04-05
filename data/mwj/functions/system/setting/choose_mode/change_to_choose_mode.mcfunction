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
function mwj:system/setting/choose_mode/choose_mode_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] ChosenHideTime 0
scoreboard players set @p[tag=Host] ChosenGlowTime 0
scoreboard players set @p[tag=Host] ChosenGameTime 0
scoreboard players set @p[tag=Host] ChosenGameMode 0
scoreboard players set @p[tag=Host] ChosenItemAdd 0
scoreboard players set @p[tag=Host] ChosenRoleAdd 0
scoreboard players set @p[tag=Host] SelectedCancel 0
scoreboard players set @p[tag=Host] SelectedOkay 0

## Change Mode
scoreboard players set Time GAME 90