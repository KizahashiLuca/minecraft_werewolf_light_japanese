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
function mwj:system/setting/decision_item_addition2/item_addition2_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectedPrevPage 0
scoreboard players set @p[tag=Host] SelectedCrossbow 0
scoreboard players set @p[tag=Host] SelectedSnowball 0
scoreboard players set @p[tag=Host] SelectedInvis 0
scoreboard players set @p[tag=Host] SelectedSpeed 0
scoreboard players set @p[tag=Host] SelectedJump 0
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
scoreboard players set Time GAME 96