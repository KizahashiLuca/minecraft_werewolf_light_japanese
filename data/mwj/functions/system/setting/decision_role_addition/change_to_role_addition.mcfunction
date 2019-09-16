###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Clear Inventory
clear @a[tag=host]

## Set Inventory
function mwj:system/setting/decision_role_addition/role_addition_inventory

## Set Scoreboard
scoreboard players set @a[tag=host] SelectedFox 0
scoreboard players set @a[tag=host] SelectedVilla 0
scoreboard players set @a[tag=host] SelectedMason 0
scoreboard players set @a[tag=host] SelectedDetec 0
scoreboard players set @a[tag=host] SelectedCat 0
scoreboard players set @a[tag=host] SelectedBarrier 0
scoreboard players set @a[tag=host] SelectedWire 0
scoreboard players set @a[tag=host] SelectedStar 0
scoreboard players set @a[tag=host] ThrowHeadFox 0
scoreboard players set @a[tag=host] ThrowHeadVilla 0
scoreboard players set @a[tag=host] ThrowHeadMason 0
scoreboard players set @a[tag=host] ThrowHeadDetec 0
scoreboard players set @a[tag=host] ThrowHeadCat 0
scoreboard players set @a[tag=host] ThrowBarrier 0
scoreboard players set @a[tag=host] ThrowWireHook 0
scoreboard players set @a[tag=host] ThrowNetherStar 0

## Change Mode
scoreboard players set Time GAME 91