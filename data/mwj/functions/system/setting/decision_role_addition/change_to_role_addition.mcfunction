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
function mwj:system/setting/decision_role_addition/role_addition_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] SelectedFox 0
scoreboard players set @p[tag=host] SelectedVilla 0
scoreboard players set @p[tag=host] SelectedMason 0
scoreboard players set @p[tag=host] SelectedDetec 0
scoreboard players set @p[tag=host] SelectedCat 0
scoreboard players set @p[tag=host] SelectedBarrier 0
scoreboard players set @p[tag=host] SelectedMap 0
scoreboard players set @p[tag=host] SelectedWire 0
scoreboard players set @p[tag=host] SelectedStar 0
scoreboard players set @p[tag=host] ThrowHeadFox 0
scoreboard players set @p[tag=host] ThrowHeadVilla 0
scoreboard players set @p[tag=host] ThrowHeadMason 0
scoreboard players set @p[tag=host] ThrowHeadDetec 0
scoreboard players set @p[tag=host] ThrowHeadCat 0
scoreboard players set @p[tag=host] ThrowBarrier 0
scoreboard players set @p[tag=host] ThrowMap 0
scoreboard players set @p[tag=host] ThrowWireHook 0
scoreboard players set @p[tag=host] ThrowNetherStar 0

## Change Mode
scoreboard players set Time GAME 91