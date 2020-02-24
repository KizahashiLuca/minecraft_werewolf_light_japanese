###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=host]

## Rest become villager
scoreboard players operation Time AddedVilla = Time AddedRole

## Set Inventory
function mwj:system/setting/decision_role_addition/role_addition_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] SelectedWolf 0
scoreboard players set @p[tag=host] SelectedMadman 0
scoreboard players set @p[tag=host] SelectedFox 0
scoreboard players set @p[tag=host] SelectedVilla 0
scoreboard players set @p[tag=host] SelectedSeer 0
scoreboard players set @p[tag=host] SelectedMedium 0
scoreboard players set @p[tag=host] SelectedMason 0
scoreboard players set @p[tag=host] SelectedDetec 0
scoreboard players set @p[tag=host] SelectedThief 0
scoreboard players set @p[tag=host] SelectedCat 0
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedReset 0
scoreboard players set @p[tag=host] SelectedOkay 0
scoreboard players set @p[tag=host] SelectedDecide 0
scoreboard players set @p[tag=host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 91