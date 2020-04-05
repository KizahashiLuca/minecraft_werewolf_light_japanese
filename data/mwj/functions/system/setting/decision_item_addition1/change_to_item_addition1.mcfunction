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
function mwj:system/setting/decision_item_addition1/item_addition1_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectedPrevPage 0
scoreboard players set @p[tag=Host] SelectedStick 0
scoreboard players set @p[tag=Host] SelectedTotem 0
scoreboard players set @p[tag=Host] SelectedDeath2 0
scoreboard players set @p[tag=Host] SelectedPearl 0
scoreboard players set @p[tag=Host] SelectedHoe 0
scoreboard players set @p[tag=Host] SelectedNextPage 0
scoreboard players set @p[tag=Host] SelectedCancel 0
scoreboard players set @p[tag=Host] SelectedReset 0
scoreboard players set @p[tag=Host] SelectedOkay 0
scoreboard players set @p[tag=Host] SelectedDecide1 0
scoreboard players set @p[tag=Host] SelectedDecide2 0
scoreboard players set @p[tag=Host] SelectedDecide3 0
scoreboard players set @p[tag=Host] SelectedDecide4 0
scoreboard players set @p[tag=Host] SelectedDecide5 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 95