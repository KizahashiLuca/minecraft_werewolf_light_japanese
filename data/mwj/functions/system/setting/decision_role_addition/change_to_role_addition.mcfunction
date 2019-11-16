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
function mwj:system/setting/decision_role_addition/role_addition_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] SelectedFox 0
scoreboard players set @p[tag=host] SelectedVilla 0
scoreboard players set @p[tag=host] SelectedMason 0
scoreboard players set @p[tag=host] SelectedDetec 0
scoreboard players set @p[tag=host] SelectedCat 0
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedReset 0
scoreboard players set @p[tag=host] SelectedOkay 0
scoreboard players set @p[tag=host] SelectedDecide 0
scoreboard players set @p[tag=host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 91