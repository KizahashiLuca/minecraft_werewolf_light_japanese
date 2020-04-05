###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=Host]

## Rest become villager
scoreboard players operation Time AddedVilla = Time AddedRole

## Set Inventory
function mwj:system/setting/decision_role_addition/role_addition_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectedWolf 0
scoreboard players set @p[tag=Host] SelectedMadman 0
scoreboard players set @p[tag=Host] SelectedFox 0
scoreboard players set @p[tag=Host] SelectedVilla 0
scoreboard players set @p[tag=Host] SelectedSeer 0
scoreboard players set @p[tag=Host] SelectedMedium 0
scoreboard players set @p[tag=Host] SelectedMason 0
scoreboard players set @p[tag=Host] SelectedDetec 0
scoreboard players set @p[tag=Host] SelectedThief 0
scoreboard players set @p[tag=Host] SelectedCat 0
scoreboard players set @p[tag=Host] SelectedCancel 0
scoreboard players set @p[tag=Host] SelectedReset 0
scoreboard players set @p[tag=Host] SelectedOkay 0
scoreboard players set @p[tag=Host] SelectedDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 98