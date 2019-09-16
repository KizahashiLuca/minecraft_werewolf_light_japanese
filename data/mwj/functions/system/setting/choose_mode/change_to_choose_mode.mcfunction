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
function mwj:system/setting/choose_mode/choose_mode_inventory

## Set Scoreboard
scoreboard players set @a[tag=host] SelectedAStand 0
scoreboard players set @a[tag=host] SelectedClock 0
scoreboard players set @a[tag=host] SelectedBarrier 0
scoreboard players set @a[tag=host] SelectedWire 0
scoreboard players set @a[tag=host] ThrowArmorStand 0
scoreboard players set @a[tag=host] ThrowClock 0
scoreboard players set @a[tag=host] ThrowBarrier 0
scoreboard players set @a[tag=host] ThrowWireHook 0

## Change Mode
scoreboard players set Time GAME 90